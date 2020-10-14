#!/bin/bash
# Cron script to dump Slurm MariaDB to backup on Isolon
# Should run sometime in the wee hours when less busy

DUMPTMP=$(mktemp -q)
DUMPFILE=slurmdb-$(date +%Y%m%d_%H%M).sql.gz
BAKDIR=/nfs/home/backups/slurm

mysqldump slurm > $DUMPTMP 
gzip -q $DUMPTMP > $BAKDIR/$DUMPFILE

[[ -e $BAKDIR/$DUMPFILE ]] && rm -f $DUMPTMP

exit 0
