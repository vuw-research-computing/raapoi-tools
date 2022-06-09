#!/usr/bin/python3.6

import sys
import pandas as pd
# import numpy as np
import getpass as gp
import argparse as ap
import datetime as dt
import calendar
import subprocess
import math
#import pdb; pdb.set_trace()
from tabulate import tabulate

from nodefunctions import convert_size

# load slurm conf

partitions={}
nodedata={}

nodedf = pd.DataFrame(columns=['nodename','partition','cpus','realmem'])
nodedatalist=[]
#jobdf = pd.DataFrame(columns=['jobid','job_name','user','state','runtime','nodes','nodename','memreq','cpualloc'])
jobdf = pd.DataFrame(columns=['jobid','job_name','user','state','runtime','nodes','nodename','memreq','cpualloc'])
joblist=[]

# #Test functions
# nodedf.loc[len(nodedf.index)]=['amd01','parallel',256,515056]
# nodedf.loc[len(nodedf.index)]=['amd02','parallel',256,515056]
# jobdf.loc[len(jobdf.index)]=['1','catcat1','andre','R','1-00:00','1','amd01','16G','4']
# jobdf.loc[len(jobdf.index)]=['2','catcat2','andre','R','1-00:00','1','amd01','16G','4']
# jobdf.loc[len(jobdf.index)]=['3','catcat3','andre','R','1-00:00','1','amd01','16G','4']
# jobdf.loc[len(jobdf.index)]=['4','catcat4','andre','R','1-00:00','1','amd02','2G','2']
# jobdf.loc[len(jobdf.index)]=['4','catcat5','andre','PD','1-00:00','1','amd02','2G','2']
# jobdf.loc[len(jobdf.index)]=['4','jack1','jack','R','1-00:00','1','amd02','9G','8']
# #joins
# # nodedf.loc[len(nodedf.index)]=['amd02','parallel',256,1000]
# df = jobdf.join(nodedf.set_index('nodename'), on='nodename')

# # convert G to Mebibytes
# df['MebiByteReq'] = [convert_size(x) for x in df['memreq']]

# # convert strings to ints
# df[['nodes', 'cpualloc','cpus','realmem']] = df[['nodes', 'cpualloc','cpus','realmem']].astype(int)

# #Only Running Jobs

# agg_func_math = {
#     'MebiByteReq':['sum'], 'cpualloc':['sum']
# }

# df1 = df.groupby(['nodename','user','state','partition','cpus','realmem'],as_index=False).agg(agg_func_math)
# df1.columns = ["_".join(col_name).rstrip('_') for col_name in df1.columns.to_flat_index()]  #https://stackoverflow.com/questions/26323926/pandas-groupby-agg-how-to-return-results-without-the-multi-index


# # #calculate stats, this should work for all users?? #TODO check this
# df1['MemClaim%'] = df1['MebiByteReq_sum']/df1['realmem']*100
# df1['CpuClaim%'] = df1['cpualloc_sum']/df1['cpus']*100


with open('slurm.conf') as f:
    lines = f.readlines()
    for line in lines:
        if 'PartitionName' in line:
            #parstring like: 'PartitionName=gpu,Nodes=gpu01,gpu02,,MaxTime=1-00:00,State=UP,Default=NO,DefaultTime=01:00:00\n'
            parstring = line.split(' ')
            parname = parstring[0].split('=')[-1]
            nodelist = parstring[1].split('=')[-1].split(',')
            nodelist = list(filter(None, nodelist)) #remove empty elements
            partitions[parname] = nodelist
        else:
            pass

with open('slurm.conf') as f:
    lines = f.readlines()
    for line in lines:
        if line.strip() == '': #empty
            pass
        elif line.strip()[0] =="#":  #if comment
            pass
        elif 'NodeName' in line:
            nodestring=line.split(' ')
            nodename = nodestring[0].split('=')[-1]
            realmem = int(nodestring[1].split('=')[-1]) #mem in Mebibytes
            cpus = int(nodestring[2].split('=')[-1]) #cpus as known to slurm
            for key in partitions:
                if nodename in partitions[key]:
                    partition = key
            #nodedata[nodename]=[partition,cpus,realmem,0,0]
            nodedatalist.append([nodename, partition,cpus,realmem])
            
            # print(nodedata)
        else:
            pass

            
nodedf = pd.DataFrame(nodedatalist, columns=['nodename','partition','cpus','realmem'])


parser = ap.ArgumentParser(prog='vuw-cluter-usage', description='Raapoi Job End Time tool. Reports the worst case job end time based on start time and job length.', epilog='For more information see the Raapoi Cluster Documentation: https://vuw-research-computing.github.io/raapoi-docs/')
parser.add_argument('-u', '--username', help=ap.SUPPRESS, default=gp.getuser())
args = parser.parse_args()

username = str(args.username)
username = "maclacjord" #for testing


squeue_string = subprocess.run(['squeue -u ' + username +' -o "%i,%j,%u,%t,%M,%D,%R,%m,%C"'],shell=True,stdout=subprocess.PIPE).stdout.decode('utf-8')

squeue_strings=squeue_string.split('\n')

if squeue_strings[1]=='':
    no_jobs=True
else:
    for line in squeue_strings:
        linesplit = line.split(',')
        if linesplit==['']:
            pass
        elif linesplit[0]=='JOBID':
            pass
        elif linesplit[3]=='R':  #just get running jobs
            joblist.append(linesplit)
        
jobdf = pd.DataFrame(joblist, columns=['jobid','job_name','user','state','runtime','nodes','nodename','memreq','cpualloc'])
df = jobdf.join(nodedf.set_index('nodename'), on='nodename')
# convert G,T to Mebibytes
df['MebiByteReq'] = [convert_size(x) for x in df['memreq']]

dfRunning = df[df['state']=='R'].copy()  #need a copy not an slice and reference to the old df

# convert strings to ints
dfRunning[['nodes', 'cpualloc','cpus','realmem']] = dfRunning[['nodes', 'cpualloc','cpus','realmem']].astype(int)

agg_func_math = {
    'MebiByteReq':['sum'], 'cpualloc':['sum']
}

df1 = dfRunning.groupby(['nodename','user','state','partition','cpus','realmem'],as_index=False).agg(agg_func_math)
df1.columns = ["_".join(col_name).rstrip('_') for col_name in df1.columns.to_flat_index()]  #https://stackoverflow.com/questions/26323926/pandas-groupby-agg-how-to-return-results-without-the-multi-index


# #calculate stats, this should work for all users?? #TODO check this
df1['MemClaim%'] = df1['MebiByteReq_sum']/df1['realmem']*100
df1['CpuClaim%'] = df1['cpualloc_sum']/df1['cpus']*100

df1mod = df1[['nodename','user','partition','CpuClaim%','MemClaim%']].sort_values(["partition","CpuClaim%","MemClaim%"], ascending = [True,False,False])
print(tabulate(df1mod, headers='keys', tablefmt='psql'))
print(" ")
print(df1mod.to_markdown()) 
