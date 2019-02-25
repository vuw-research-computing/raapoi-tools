#!/bin/bash
# This script splits a multi-mol2 GOLD docking job into a number of batches
# for processing on a Slurm cluster. The multi-mol2
# file is not modified but a unique gold.conf is needed for each batch.
#
usage() {
    echo
    echo "Usage: $0 [-n n_procs] [-c conf_file] -t"
    echo "  -n n_procs : number of individual jobs to launch {default: 2}"
    echo "  -c conf_file  : the prepared GOLD configuration file"
    echo "  -d : debug"
    exit
}

# test - for debugging, don't launch sbatch
debug=0
n_procs=2
if [[ "$#" == "0" ]]; then
  usage
fi
while (( "$#" )); do
    case "$1" in
        -n ) n_procs=$2; shift ;;
        -c ) conffile=$2; shift ;;
        -d ) debug=1; echo "debug mode" ;;
    esac
    shift
done
if [ ! -f $conffile ]; then
    echo "No config file $conffile"
    exit
fi
case $n_procs in
    [0-9]* ) ;;
    * )
        echo "Problem with \$n_procs setting: $n_procs"
        usage
    ;;
esac
# Directory containing gold.conf file, will also be used for storing the results
# dir="$HOME/screentest"
dir=`pwd`
# need to get this here to work out how many ligands it's got
file=`awk '/ligand_data_file/ { print $2 }' $conffile`
# Calculate number of molecules to be docked
if [[ -z $n_mols ]]; then
  echo "No ligand data found in $conffile"
  exit 1
else
  n_mols=`grep MOLECULE $file | wc -l`
fi
[ $n_mols -eq 0 ] && { echo "Problem reading ligand file $file specified in $conffile"; exit; }
# divide by number of docking processes to launch
split=`expr $n_mols / $n_procs`
[ $split -lt 1 ] && split=n_mols
#
echo "$n_procs docking processes, $n_mols ligands: $split each"
s="start_at_ligand"
f="finish_at_ligand"
cd $dir
proc=1 # docking counter
lig1=1 # start ligand
lig2=$split # end ligand
while [ $proc -le $n_procs ]; do
    if [ $proc -eq $n_procs ]; then
        lig2=$n_mols # last process gets whatever's left
    fi
    new_conf=conf_${lig1}_${lig2}
    sed -e "s;^\(ligand_data_file\) \(.*\) \(.*\);\1 $file \3 $s $lig1 $f $lig2;" \
        -e "s;^\(directory\).*;\1 = $dir/output_${lig1}_${lig2};" \
        $conffile > $new_conf
    if [ $debug -ne 1 ]; then
      echo "Submitting job for ${lig1}_${lig2}"
      sbatch <<EOS
#!/bin/bash
#SBATCH -p parallel
#SBATCH -c 2
#SBATCH --mem-per-cpu=1G
#SBATCH --time=1-00:00
#SBATCH -J run_${lig1}_${lig2}

module load CCDC-Suite/2019

gold_auto $dir/$new_conf"
EOS

    else
        # For Debug
        echo "gold_auto $dir/$new_conf"
    fi
    outdirs="$dir/output_${lig1}_${lig2} $outdirs"
    proc=`expr $proc + 1`
    lig1=`expr $lig2 + 1`
    lig2=`expr $split \* $proc`
    # don't overwhelm slurm
    sleep 1
done
if [ -e collate_results.sh ] ; then
   rm -f collate_results.sh
fi
echo "#!/bin/sh" > collate_results.sh
echo "for DIR in $outdirs ; do" >> collate_results.sh
echo 'grep "[0-9]" $DIR/bestranking.lst >> collated_bestranking_file.tmp' >> collate_results.sh
echo "done" >> collate_results.sh
echo "sort -n -i -r collated_bestranking_file.tmp > collated_best_ranking_file" >> collate_results.sh
echo "rm -f collated_bestranking_file.tmp" >> collate_results.sh
chmod +x collate_results.sh
echo "A script to collate the results has been created: collate_results.sh"
wait
echo "Done"
