#!/bin/bash
#
# scan bigmem partition and requeue any job with less than 100G memory
#
TMPFILE=`mktemp`
SACCT_FORMAT="User,JobId,ReqCPUS,ReqMem"

sacct -a -r bigmem -P --units=g -s running -n -X > $TMPFILE

for i in $(cat $TMPFILE); do
  USER=$(echo $i | cut -d"|" -f 1)
  JOBID=$(echo $i | cut -d"|" -f 2)
  CPUS=$(echo $i | cut -d"|" -f 3)
  RAWMEM=$(echo $i | cut -d"|" -f 4)

  if [[ "$RAWMEM" =~ "Gn" ]]; then
    MEM=${RAWMEM%Gn}
  else
    let MEM="${RAWMEM%Gc} * $CPUS"
  fi

  if [[ $MEM -lt 100 ]]; then
    echo "$USER is using $MEM GB on bigmem"
  fi
done
