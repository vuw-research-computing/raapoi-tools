#!/bin/bash
# Cron script to dump Slurm MariaDB to backup on Isolon
# Should run sometime in the wee hours when less busy

DUMPTMP=$(mktemp -d -q)
DUMPFILE=slurmdb-$(date +%Y%m%d_%H%M).sql
BAKDIR=/nfs/home/backups/slurm

mysqldump slurm > $DUMPTMP/$DUMPFILE
gzip -q $DUMPTMP/$DUMPFILE && mv $DUMPTMP/${DUMPFILE}.gz $BAKDIR/

rm -rf $DUMPTMP

exit 0
