#!/bin/bash
#
BUILDTMP=/home/software/tmp
MODPATH=/home/software/vuwrc/modulefiles/R
BUILDPATH=$BUILDTMP/R-build
CRANBUILD=/home/software/vuwrc/admin/bin/R-CRAN-compile.R
ROUT=$BUILDTMP
#
if [[ $# -lt 2 || $1 = -h || $1 = --help ]]; then
  echo ""
  echo "Build CRAN in build dir"
  echo ""
  echo "Usage: R-CRAN-compile.sh <CRAN-Build-Repo> <R-Env-Module-Path>"
  echo "   Eg: R-CRAN-compile.sh 3.4 R/3.4.2"
  echo ""
  exit 1
fi

if [[ ! -e $MODPATH/CRAN/$1 ]]; then
  echo "The modulefile $MODPATH/CRAN/$1 does not exist, please create"
  exit 1
elif [[ ! -d $BUILDPATH/$1 ]]; then
  mkdir -p $BUILDPATH
  
else
  echo "Loading Modules..."
fi

#Load modules required for successful build
module load $2
module load mpi/openmpi
module load java/jdk/1.8.0_121

echo "Did you receive any module load errors? (y|n)"
read reply

if [[ $reply = "y" ]]; then
  echo "Fix module load errors, exiting..."
  exit 1
fi

[[ ! -d $HOME/tmp ]] && mkdir $HOME/tmp

echo "Submitting job to build CRAN, check CRAN-build logfiles"
echo "in $ROUT for any specific log or error information."
echo "Once completed, sync data to user repo area and update modulefile"
echo "if necessary"
echo ""

sbatch -p parallel -c 8 --mem=60G --time=5-00:00 \
  -o $ROUT/CRAN-build-${1}.out -e $ROUT/CRAN-build-${1}.err \
  --mail-type=BEGIN,END,FAIL --mail-user=wes.harrell@vuw.ac.nz -J CRAN-build \
  xvfb-run R CMD BATCH --vanilla "--args $1" $CRANBUILD $ROUT/CRAN-build-${1}.Rout
