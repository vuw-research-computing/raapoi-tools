**Simple Interactive example**
One of the basic job submittal tools is the command srun

For example, say I want to start a job to run an interactive R session. Once logged into the cluster I can:
```
  module load R/3.5.1
  srun --pty --cpus-per-task=2 --mem=2G  --time=2-00:00 --partition=main R
```

So what does this all mean?

The _module load_ command will introduce the environment necessary to run a particular program, in this case R version 3.5.1

The _srun_ command will submit the job to the cluster.  The _srun_ command has many parameter available, some of the most common are in this example and explained below

* --pty - Required to run interactively
* --cpus-per-task=2 - requests 2 CPUs, can also use the -c flag, eg. -c 2
* --mem=2G - requests 2 GigaBytes (GB) of RAM. 
* --time=2-00:00 - requests a runtime of up to 2 days (format is DAYS-HOURS:MINUTES), this is important in case the cluster or partition has a limited run-time, for example if an outage window is approaching.  Keep in mind time is a resource along with CPU and Memory.  
* --partition=main - requests a certain partition, in this case it requests the main partition, see the section on using cluster partitions for more information.
* R - the command you wish to run, this could also be matlab, mathematica, SAS, etc. (just remember to load the module first)