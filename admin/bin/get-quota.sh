#!/bin/bash
SCRATCH=/nfs/home/cad/log/scratch.log
SCRATCH2=/nfs/home/cad/log/scratch2.log
GROUP=/nfs/home/cad/log/group.log
if [ "${HOSTNAME%%}" != "raapoi_fs01" ]; then
  echo "Must be run from raapoi_fs01"
  echo ""
  exit
else
  sudo xfs_quota -x -c 'report -u' /mnt/scratch | awk '{print $1, $2, $4}' > $SCRATCH
  sudo xfs_quota -x -c 'report -u' /mnt/scratch2 | awk '{print $1, $2, $4}' > $SCRATCH2
  sudo xfs_quota -x -c 'report -g' /mnt/scratch | egrep -v "(^#|^$|users|root|wheel|cadadm)" | tail -n +5 | awk '{print $1, $2, $4}' > $GROUP
fi
