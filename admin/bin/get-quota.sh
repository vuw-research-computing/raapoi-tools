#!/bin/bash
LOG=/nfs/home/cad/log/quota.log
SCRATCH=/nfs/home/cad/log/scratch.log
if [ "${HOSTNAME%%}" != "raapoi_fs01" ]; then
  echo "Must be run from raapoi_fs01"
  echo ""
  exit
else
  sudo xfs_quota -x -c 'report -u' /mnt/home | awk '{print $1, $2, $4}' > $LOG
  sudo xfs_quota -x -c 'report -u' /mnt/scratch | awk '{print $1, $2, $4}' > $SCRATCH
fi
