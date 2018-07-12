#!/bin/bash
maxload=8.0
#load=`uptime | awk -F, '{print $4}' | awk -F": " '{print $2}'`
load=`cat /proc/loadavg  | awk '{print $1}'`
showt=`top -b -n 1 | head -30`
(( $(echo "$load>$maxload" | bc) )) && top -b -n 1 | head -n 20 | mailx -s "highload on eosloan: $showt" sts.rc@mit.edu
exit 0
