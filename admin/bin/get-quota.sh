#!/bin/bash
LOG=/home/software/sloan/local/log/quota.log
if [ "${HOSTNAME%%.cm.cluster}" != "eofe-data008-mgmt" ]; then
  echo "Must be run from eofe-data008"
  echo ""
  exit
else
  sudo xfs_quota -x -c 'report' /sloanlab001 | grep _proj | awk '{print $1, $2, $4}' > $LOG
fi
