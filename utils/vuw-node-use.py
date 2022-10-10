#!/usr/bin/env python3
import subprocess
nodedata=subprocess.run(["scontrol", "-o","show","nodes"], stdout=subprocess.PIPE)
nodedata = nodedata.stdout.decode("utf-8").split('\n')

nodedict={}
for n in nodedata:
    nn=n.split(' ')
    node={}
    nodename='none'
    for data_element in nn:
        try: 
            key, value = data_element.split("=",1)
            if "NodeName" in key:
                nodename=value
        except:
            key, value = ['','']
        node[key]=value
    if nodename != 'none':    
        nodedict[nodename]=node

print('%-10s' % ' ', '%-13s' % 'CPURequested', '%-8s' % 'CPUUsed', ' |  ' '%-16s' % 'RequestedMemory', '%-11s' % 'UsedMemory')
print('%-10s' % 'NodeName', '%-13s' % 'Percent', '%-8s' % 'Percent', ' |  ' '%-16s' % 'Percent', '%-11s' % 'Percent')
for node in nodedict.keys():
    if nodedict[node]['CPULoad'] != "N/A":
        nodedict[node]['CPURequestedP']=float(nodedict[node]['CPUAlloc'])/float(nodedict[node]['CPUTot'])
        nodedict[node]['CPUUsedP']=float(nodedict[node]['CPULoad'])/float(nodedict[node]['CPUTot'])

        nodedict[node]['UsedMemory']=int(nodedict[node]['RealMemory']) - int(nodedict[node]['FreeMem'])
        nodedict[node]['RequestedMemoryP']=float(nodedict[node]['AllocMem'])/float(nodedict[node]['RealMemory'])
        nodedict[node]['UsedMemoryP']=float(nodedict[node]['UsedMemory'])/float(nodedict[node]['RealMemory'])

        CPURequestedP = float(nodedict[node]['CPURequestedP'])*100
        CPUUsedP = float(nodedict[node]['CPUUsedP'])*100
        RequestedMemoryP = float(nodedict[node]['RequestedMemoryP'])*100
        UsedMemoryP = float(nodedict[node]['UsedMemoryP'])*100
        # Print output
        #amd01n01 cpurequest cpuused | memrequest memused
        print('%-10s' % node, '%-13.2f' % CPURequestedP, '%-8.2f' % CPUUsedP, ' |  ' '%-13.2f' % RequestedMemoryP, '   ' '%-14.2f' % UsedMemoryP)

    else:
        nodedict[node]['CPURequestedP']='N/A'
        nodedict[node]['CPUUsedP']='N/A'

        nodedict[node]['UsedMemory']='N/A'
        nodedict[node]['RequestedMemoryP']='N/A'
        nodedict[node]['UsedMemoryP']='N/A'

 