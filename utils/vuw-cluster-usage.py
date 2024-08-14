#!/usr/bin/env python3

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

from nodefunctions import convert_size, get_job_list, get_node_state, get_node_info

parser = ap.ArgumentParser(prog='vuw-cluter-usage', description='Raapoi Job End Time tool. Reports the worst case job end time based on start time and job length.', epilog='For more information see the Raapoi Cluster Documentation: https://vuw-research-computing.github.io/raapoi-docs/')
parser.add_argument('-u', '--username', help=ap.SUPPRESS, default=gp.getuser())
args = parser.parse_args()

username = str(args.username)
username = "maclacjord" #for testing

# nodedata={}
nodedf = pd.DataFrame(columns=['nodename','partition','cpus','realmem'])
jobdf = pd.DataFrame(columns=['jobid','job_name','user','state','runtime','nodes','nodename','memreq','cpualloc'])

jobdf = get_job_list(username, nodedf)
nodestatedf = get_node_state()
nodedf = get_node_info(nodestatedf)


df = jobdf.join(nodedf.set_index('nodename'), on='nodename')
# convert G,T to Mebibytes
df['MebiByteReq'] = [convert_size(x) for x in df['memreq']]

#Running jobs only
dfRunning = df[df['state']=='R'].copy()  #need a copy not an slice and reference to the old df

# convert strings to ints
dfRunning[['nodes', 'cpualloc','cpus','realmem']] = dfRunning[['nodes', 'cpualloc','cpus','realmem']].astype(int)

agg_func_math = {
    'MebiByteReq':['sum'], 'cpualloc':['sum']
}

df1 = dfRunning.groupby(['nodename','user','state','partition','cpus','realmem'],as_index=False).agg(agg_func_math)
df1.columns = ["_".join(col_name).rstrip('_') for col_name in df1.columns.to_flat_index()]  #https://stackoverflow.com/questions/26323926/pandas-groupby-agg-how-to-return-results-without-the-multi-index


# #calculate per node stats, this should work for all users?? -- it does
df1['MemClaim%'] = df1['MebiByteReq_sum']/df1['realmem']*100
df1['CpuClaim%'] = df1['cpualloc_sum']/df1['cpus']*100

df1mod = df1[['nodename','user','partition','CpuClaim%','MemClaim%']].sort_values(["partition","CpuClaim%","MemClaim%"], ascending = [True,False,False])

# calculate active partition stats
activePartitionResources = nodedf[nodedf['nodestate']=='up'].groupby(['partition'],as_index=False).agg({'cpus': 'sum', 'realmem':'sum'})
partition_used = df1.groupby(['partition','user']).agg({'cpualloc_sum': 'sum', 'MebiByteReq_sum': 'sum'})
partition_used = partition_used.join(activePartitionResources.set_index('partition'), on='partition')
partition_used = partition_used.reset_index()
partition_used['CpuClaim%'] = partition_used['cpualloc_sum']/partition_used['cpus']*100
partition_used['MemClaim%'] = partition_used['MebiByteReq_sum']/partition_used['realmem']*100
partition_used = partition_used.reset_index


print(" ")
print("Cluster Resources Allocated Per Node")
print(df1mod.to_markdown(index=False)) 

print(" ")
print("Cluster Resources Allocated Per Partition")
print(partition_used.to_markdown()) 
