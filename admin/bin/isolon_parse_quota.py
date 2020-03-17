#!/usr/bin/python3

import pwd
import string
import json
import os

#hrm, a non JSON header got added to the output from isolon, strip
#it out before we continue
os.system('tail -n +5 /nfs/home/cad/log/home.log > /nfs/home/cad/log/home.json')

in_qfile = '/nfs/home/cad/log/home.json'
out_qfile = '/nfs/home/cad/log/quota.log'
char = "UID:"
output = open(out_qfile,"w")

with open(in_qfile, 'r', encoding='utf-8') as jfile:
    jdata = json.load(jfile)


for item in jdata['quotas']:
    if item['persona'] is not None:
       uid = int(item['persona']['id'].strip(char))
       try:
           user = pwd.getpwuid(uid).pw_name
       except:
           print(str(uid) + " not found, skipping...")
       quota = item['thresholds']['hard']
       used = item['usage']['logical']
       record = (user + " " + str(used) + " " + str(quota))
       output.write(record + "\n")
output.close()
