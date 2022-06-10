import subprocess
import pandas as pd


def convert_size(slurm_mem):
    gibimibi=1024 # ratio from gibibytes to mebibytes (same for Tebibyt to GibiByte)
    mem = slurm_mem.replace('M','')
    mem = mem.replace('G','')
    mem = mem.replace('T','')
    mem=float(mem)
    # Convert Gibibytes to Mibibytes
    if 'T' in slurm_mem:
        mem = mem * gibimibi * gibimibi 
    elif 'G' in slurm_mem:
        mem = mem * gibimibi
    elif 'M' in slurm_mem: #already in MebiBytes (slurms working unit)
        pass
    else:
        1/0  #error
    return int(mem)

def get_node_state():
    sinfo_string = subprocess.run(['sinfo -N -o "%N %t" -h'],shell=True,stdout=subprocess.PIPE).stdout.decode('utf-8')
    sinfo_strings = sinfo_string.split('\n')
    sinfo_strings = sinfo_strings[:-1] #remove trailing empty

    #simplify states
    upstates =  ['alloc', 'comp', 'drng', 'idle', 'mix', 'resv']
    downstates = ['down', 'drain', 'fail', 'failg', 'futr', 'maint', 'npc', 'plnd', 'pow_dn', 'pow_up', 'unk']
    sinfo_strings = [line.replace('*','') for line in sinfo_strings]

    for upstate in upstates:
        sinfo_strings = [line.replace(upstate,'up') for line in sinfo_strings]
    for downstate in downstates:
        sinfo_strings = [line.replace(downstate,'down') for line in sinfo_strings]

    node_states=[line.split(' ') for line in sinfo_strings]

    df = pd.DataFrame(node_states, columns=['nodename','nodestate'])
    return df

            

def get_node_info(nodestatedf):
    nodedatalist=[]
    partitions={}

    '''Get node info from slurm.conf'''
    with open('slurm.conf') as f:
        lines = f.readlines()
        for line in lines:
            if 'PartitionName' in line:
                #parstring like: 'PartitionName=gpu,Nodes=gpu01,gpu02,,MaxTime=1-00:00,State=UP,Default=NO,DefaultTime=01:00:00\n'
                parstring = line.split(' ')
                parname = parstring[0].split('=')[-1]
                nodelist = parstring[1].split('=')[-1].split(',')
                nodelist = list(filter(None, nodelist)) #remove empty elements
                partitions[parname] = nodelist
            else:
                pass

    with open('slurm.conf') as f:
        lines = f.readlines()
        for line in lines:
            if line.strip() == '': #empty
                pass
            elif line.strip()[0] =="#":  #if comment
                pass
            elif 'NodeName' in line:
                nodestring=line.split(' ')
                nodename = nodestring[0].split('=')[-1]
                realmem = int(nodestring[1].split('=')[-1]) #mem in Mebibytes
                cpus = int(nodestring[2].split('=')[-1]) #cpus as known to slurm
                for key in partitions:
                    if nodename in partitions[key]:
                        partition = key
                #nodedata[nodename]=[partition,cpus,realmem,0,0]
                nodedatalist.append([nodename, partition,cpus,realmem])
                
                # print(nodedata)
            else:
                pass          
    nodedf = pd.DataFrame(nodedatalist, columns=['nodename','partition','cpus','realmem'])

    nodedf = nodedf.join(nodestatedf.set_index('nodename'), on='nodename')
    return nodedf

def get_job_list(username, nodedf):
    joblist=[]
    #squeue_string = subprocess.run(['squeue -u ' + username +' -o "%i,%j,%u,%t,%M,%D,%R,%m,%C"'],shell=True,stdout=subprocess.PIPE).stdout.decode('utf-8')
    squeue_string = subprocess.run(['squeue -o "%i,%j,%u,%t,%M,%D,%R,%m,%C"'],shell=True,stdout=subprocess.PIPE).stdout.decode('utf-8')

    squeue_strings=squeue_string.split('\n')

    if squeue_strings[1]=='':
        no_jobs=True
    else:
        for line in squeue_strings:
            linesplit = line.split(',')
            if linesplit==['']:
                pass
            elif linesplit[0]=='JOBID':
                pass
            elif linesplit[3]=='R':  #just get running jobs
                joblist.append(linesplit)
    1/0  
    # multinode jobs return
    # ['1539355', 'relax', 'holmeswi', 'R', '8:39:48', '4', 'amd05n04', 'amd06n[01-03]', '1G', '128']
    # #!/bin/bash
    # #SBATCH --job-name=relax
    # #SBATCH --time=00-10:30:00
    # #SBATCH --output=pw.out
    # #SBATCH --error=pw.err
    # #SBATCH --partition=parallel
    # #SBATCH --ntasks=128
    # #SBATCH --cpus-per-task=1
    # #SBATCH --tasks-per-node=32
    # #SBATCH --mem-per-cpu=1GB
    # #SBATCH --nodes=4
    # #SBATCH --constraint="AMD"

    # module load intel/2021b

    # mpirun -np 128 /nfs/home/holmeswi/QE/AMD_MLK_Extra/q-e/bin/pw.x -npool 16 -in GdN_scf.in > GdN_scf.out
    # ^@
    # ./hash.5/job.1539355/script (END)
    #darn - 1G per CPU

    # scontrol show jobid="1539355"
    # JobId=1539355 JobName=relax
    #     UserId=holmeswi(2126) GroupId=users(100) MCS_label=N/A
    #     Priority=599 Nice=0 Account=scps QOS=normal
    #     JobState=RUNNING Reason=None Dependency=(null)
    #     Requeue=1 Restarts=0 BatchFlag=1 Reboot=0 ExitCode=0:0
    #     RunTime=08:52:21 TimeLimit=10:30:00 TimeMin=N/A
    #     SubmitTime=2022-06-10T10:03:48 EligibleTime=2022-06-10T10:03:48
    #     AccrueTime=2022-06-10T10:03:48
    #     StartTime=2022-06-10T10:03:48 EndTime=2022-06-10T20:33:48 Deadline=N/A
    #     PreemptTime=None SuspendTime=None SecsPreSuspend=0
    #     LastSchedEval=2022-06-10T10:03:48
    #     Partition=parallel AllocNode:Sid=raapoi-master:22843
    #     ReqNodeList=(null) ExcNodeList=(null)
    #     NodeList=amd05n04,amd06n[01-03]
    #     BatchHost=amd05n04
    #     NumNodes=4 NumCPUs=128 NumTasks=128 CPUs/Task=1 ReqB:S:C:T=0:0:*:*
    #     TRES=cpu=128,mem=128G,node=4,billing=128
    #     Socks/Node=* NtasksPerN:B:S:C=32:0:*:* CoreSpec=*
    #     MinCPUsNode=32 MinMemoryCPU=1G MinTmpDiskNode=0
    #     Features=AMD DelayBoot=00:00:00
    #     OverSubscribe=OK Contiguous=0 Licenses=(null) Network=(null)
    #     Command=/nfs/home/holmeswi/Work/GdN/GdN_Lattice/333_NV_PM/sub_scf.sh
    #     WorkDir=/nfs/home/holmeswi/Work/GdN/GdN_Lattice/333_NV_PM
    #     StdErr=/nfs/home/holmeswi/Work/GdN/GdN_Lattice/333_NV_PM/pw.err
    #     StdIn=/dev/null
    #     StdOut=/nfs/home/holmeswi/Work/GdN/GdN_Lattice/333_NV_PM/pw.out
    #     Power=
        
    jobdf = pd.DataFrame(joblist, columns=['jobid','job_name','user','state','runtime','nodes','nodename','memreq','cpualloc'])
    return jobdf

# #Test functions
# nodedf.loc[len(nodedf.index)]=['amd01','parallel',256,515056]
# nodedf.loc[len(nodedf.index)]=['amd02','parallel',256,515056]
# jobdf.loc[len(jobdf.index)]=['1','catcat1','andre','R','1-00:00','1','amd01','16G','4']
# jobdf.loc[len(jobdf.index)]=['2','catcat2','andre','R','1-00:00','1','amd01','16G','4']
# jobdf.loc[len(jobdf.index)]=['3','catcat3','andre','R','1-00:00','1','amd01','16G','4']
# jobdf.loc[len(jobdf.index)]=['4','catcat4','andre','R','1-00:00','1','amd02','2G','2']
# jobdf.loc[len(jobdf.index)]=['4','catcat5','andre','PD','1-00:00','1','amd02','2G','2']
# jobdf.loc[len(jobdf.index)]=['4','jack1','jack','R','1-00:00','1','amd02','9G','8']
# #joins
# # nodedf.loc[len(nodedf.index)]=['amd02','parallel',256,1000]
# df = jobdf.join(nodedf.set_index('nodename'), on='nodename')

# # convert G to Mebibytes
# df['MebiByteReq'] = [convert_size(x) for x in df['memreq']]

# # convert strings to ints
# df[['nodes', 'cpualloc','cpus','realmem']] = df[['nodes', 'cpualloc','cpus','realmem']].astype(int)

# #Only Running Jobs

# agg_func_math = {
#     'MebiByteReq':['sum'], 'cpualloc':['sum']
# }

# df1 = df.groupby(['nodename','user','state','partition','cpus','realmem'],as_index=False).agg(agg_func_math)
# df1.columns = ["_".join(col_name).rstrip('_') for col_name in df1.columns.to_flat_index()]  #https://stackoverflow.com/questions/26323926/pandas-groupby-agg-how-to-return-results-without-the-multi-index


# # #calculate stats, this should work for all users?? #TODO check this
# df1['MemClaim%'] = df1['MebiByteReq_sum']/df1['realmem']*100
# df1['CpuClaim%'] = df1['cpualloc_sum']/df1['cpus']*100
