#!/usr/bin/python3.6

import sys
# import pandas as pd
# import numpy as np
import getpass as gp
import argparse as ap
import datetime as dt
import calendar
import subprocess
import math
#import pdb; pdb.set_trace()

# load slurm conf

partitions={}

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
            # print(partition)
            nodedata=[nodename,partition,cpus,realmem]
            print(nodedata)
        else:
            pass
            


# parser = ap.ArgumentParser(prog='vuw-cluter-usage', description='Raapoi Job End Time tool. Reports the worst case job end time based on start time and job length.', epilog='For more information see the Raapoi Cluster Documentation: https://vuw-research-computing.github.io/raapoi-docs/')
# parser.add_argument('-u', '--username', help=ap.SUPPRESS, default=gp.getuser())
# args = parser.parse_args()

# username = str(args.username)

# def convert_size(slurm_mem):
#     gibimibi=1024
#     mem = slurm_mem.replace('M','')
#     mem = mem.replace('G','')
#     mem=float(mem)
#     # Convert Gibibytes to Mibibytes
#     if 'G' in slurm_mem:
#         mem = mem * gibimibi
#     elif 'M' in slurm_mem:
#         pass
#     else:
#         1/0  #error

# class Node:
#     '''class containing node specific info'''
#     def __init__(
#             self,
#             name: str,
#             cpu: int,
#             memory: float
#         ):
#         self.name = name
#         self.cpu = cpu
#         self.memory = memory

# class PartitionResources:
#     '''Class for keeping track of Partition Resources.'''
#     cpu: int
#     memory: float

#     cpu_total: int
#     memory_total: float

#     def __init__(
#             self, 
#             cpu_total: float,
#             memory_total: float
#         ) 
#         self.cpu_total = cpu_total
#         self.memory_total = memory_total

#     def add_job(self, incpu, inmemory):
#         cpu=cpu
        
#         return self.unit_price * self.quantity_on_hand
    
#     def __repr__(self) -> str:
#         return (
#             'InventoryItem('
#             f'name={self.name!r}, unit_price={self.unit_price!r}, '
#             f'quantity_on_hand={self.quantity_on_hand!r})'

#     def __hash__(self) -> int:
#         return hash((self.name, self.unit_price, self.quantity_on_hand))

#     def __eq__(self, other) -> bool:
#         if not isinstance(other, InventoryItem):
#             return NotImplemented
#         return (
#             (self.name, self.unit_price, self.quantity_on_hand) == 
#             (other.name, other.unit_price, other.quantity_on_hand))


# squeue_string = subprocess.run(['squeue -u ' + username +' -o "%i,%P,%j,%u,%t,%M,%D,%R,%m,%C"'],shell=True,stdout=subprocess.PIPE).stdout.decode('utf-8')

# squeue_strings=squeue_string.split('\n')
# if squeue_strings[1]=='':
#     no_jobs=True
# else:
#     for line in squeue_strings:
#         linesplit = line.split(',')

#         try:
#             partition = linesplit[1]

#             if partition == "PARTITION":
#                 pass
#             elif partition == 'parallel':
#                 print('parallel')
#             elif partition == 'bigmem':
#                 print('bigmem')
#             else:
#                 print('Error!')
#         except:
#             pass
        
