#!/bin/bash
#get Sloan user CPU usage in seconds since STARTTIME
#
SACCT_FORMAT="AllocCPUS,AllocGRES,AllocNodes,AllocTRES,Account,AssocID,AveCPU,AveCPUFreq,AveDiskRead,AveDiskWrite,AvePages,AveRSS,AveVMSize,BlockID,Cluster,Comment,ConsumedEnergy,ConsumedEnergyRaw,CPUTime,CPUTimeRAW,DerivedExitCode,Elapsed,Eligible,End,ExitCode,GID,Group,JobID,JobIDRaw,JobName,Layout,MaxDiskRead,MaxDiskReadNode,MaxDiskReadTask,MaxDiskWrite,MaxDiskWriteNode,MaxDiskWriteTask,MaxPages,MaxPagesNode,MaxPagesTask,MaxRSS,MaxRSSNode,MaxRSSTask,MaxVMSize,MaxVMSizeNode,MaxVMSizeTask,MinCPU,MinCPUNode,MinCPUTask,NCPUS,NNodes,NodeList,NTasks,Priority,Partition,QOS,QOSRAW,ReqCPUFreq,ReqCPUFreqMin,ReqCPUFreqMax,ReqCPUFreqGov,ReqCPUS,ReqGRES,ReqMem,ReqNodes,ReqTRES,Reservation,ReservationId,Reserved,ResvCPU,ResvCPURAW,Start,State,Submit,Suspended,SystemCPU,Timelimit,TotalCPU,UID,User,UserCPU,WCKey,WCKeyID"
#
if [ -z $1 ]; then
  echo "Please supply a start date (and optional end date)  in YYYY-MM-DD format, for example:"
  echo "  user-cpu-usage.sh 2016-07-01 2016-09-01"
  exit 1
else
  STARTTIME=$1
fi
if [ -z $2 ]; then
  STOPTIME=`date +%Y-%m-%d`
else
  STOPTIME=$2
fi
#
FOUT="eo-usage-$STARTTIME-$STOPTIME"
if [ -f ~/$FOUT ]; then
  rm -f ~/$FOUT
fi 
for i in `eo-show-users`; do 
#  sacct -p -u $i -S $STARTTIME -E $STOPTIME --format User,CPUTimeRAW -X |grep ^[a-z] |awk -F"|" '{sec+=$2} END {print $1"," sec}' |grep -v ^, | tee -a ~/$FOUT
  sacct -p -u $i -S $STARTTIME -E $STOPTIME --format $SACCT_FORMAT -X >> ~/$FOUT
done
echo "Output file: $FOUT is in your Home directory"
