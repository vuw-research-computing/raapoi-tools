#!/usr/bin/python3

import pwd
import string
import json

#qfile = '/nfs/home/cad/log/home.log'
qfile = '/home/wharrell/home.log'
char = "UID:"

with open(qfile, 'r', encoding='utf-8') as jfile:
    jdata = json.load(jfile)


for item in jdata['quotas']:
    if item['persona'] is not None:
       uid = int(item['persona']['id'].strip(char))
       try:
           user = pwd.getpwuid(uid).pw_name
       except:
           print(str(uid) + " not found, skipping...")
       quota = int(item['thresholds']['hard'])
       used = int(item['usage']['physical'])
       print("User: " + user)
       print("Quota: " + str(quota))
       print("Used: " + str(used))
