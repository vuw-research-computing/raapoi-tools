# Cluster Description

The CADGrid HPC Cluster (hereafter referred to as: the cluster) is a Uni-wide computing
resource that uses the Slurm resource manager to schedule jobs and reserve
resources.  Similar to most modern compute clusters, the cluster requires you to
request CPU, Memory and Time for your job.  If you do not request these
resources, you will be given the minimal defaults, which may not be enough to
run your job.  The good news about resource reservations is that the resources
you request are guaranteed to be yours, the bad news is if you request too
little memory or time, your job may terminate prematurely and if you request too
few CPUs then your job may run slowly.

The cluster is made up of partitions.  A partition is a set of compute nodes
(servers) and each partition has its own configuration and hardware profile.
The partition on which you run your jobs will depend on the type of workflow or
job you intend to submit.

The cluster employs the module environment to allow researchers to customize
their environment with their required applications and languages.  

The documentation contained in this wiki cover most of what you will need to
know to start running jobs, but if you need more help, we will be creating some
tutorials with step-by-step instructions for our most popular apps and
languages.

# Accessing the cluster

_Access is via SSH_

*  Hostname: 10.60.49.210
*  Port: 22
*  Username: Your VUW username
*  Password: Your cluster password

Note: We recommend against saving your password within your SSH client, this is counter to security best-practice and will most likely cause issues in the future.

#### SSH Clients
_Mac OSX SSH Clients_
You can use the built-in Terminal.app or you can download iTerm2 or XQuartz. XQuartz is required to be installed if you wish to forward GUI applications (matlab, rstudio, xstata, sas, etc), aka X forwarding.

* Terminal.app is the default application for command-line interface
  * To login using the built-in Terminal.app on Mac, go to
    * Applications --> Utilities --> Terminal.app
    * Or use Spotlight search (aka Command-Space)
* [iTerm2](https://www.iterm2.com/) is a good replacement for the default Terminal app
* [XQuartz](https://www.xquartz.org/) is a Xforwarding application with its own terminal

NOTE:  Once at the command prompt you can type the following to login (replace "username" with your VUW user):

`ssh username@10.60.49.210`

_Windows SSH Clients_

* Free Clients:
  * [MobaXterm](https://mobaxterm.mobatek.net/) is a good option
  * [PuTTy](https://www.putty.org/).  
* There are also the XWin32 and SecureCRT clients, but these cost money to license.
  * [X-Win32](https://www.starnet.com/xwin32/)
  * [SecureCRT](https://www.vandyke.com/products/securecrt/)

# Basic Commands
#### The _vuw_ Commands

In an effort to make using the cluster just a bit easier, CAD staff have created commands to help you view useful information.  We call these the _vuw_ commands.  This is because all the commands begin with the string _vuw_.  This makes it easier to see the commands available to you.  If, at a command prompt you type _vuw_ followed immediately by two _TAB_ keys you will see a list of available commands beginning with _vuw_.  Go ahead and type vuw-TAB-TAB to see for yourself.

The commands available as of this update are:

* _vuw-help_:            Prints this help information
* _vuw-job-report_:      Provides some summary information about a job
* _vuw-quota_:           Prints current storage quota and usage
* _vuw-partitions_:      Prints a list of available partitions and the availability of compute nodes
* _vuw-alljobs_:         Prints a list of all user jobs
* _vuw-myjobs_:          Prints a list of your running or pending jobs
* _vuw-job-history_:     Show jobs finished in last 48 hours


#### Linux Commands

The cluster is built using the Linux operating system. Access is primarily via command line interface (CLI) as opposed to the graphical user interfaces (GUI) that you are more familiar with (such as those on Windows or Mac) Below are a list of common commands for viewing and managing files and directories (replace the file and directory names with ones you own):

**ls** - This command lists the contents of the current directory
* _ls -l_ This is the same command with a flag (-l) which lists the contents with more information, including access permissions
* _ls -a_ Same ls command but this time the -a flag which will also list hidden files. Hidden files start with a . (period)
* _ls -la_ Stringing flags together

**cd** - This will change your location to a different directory (folder)
* _cd projects/calctest_proj_
* Typing _cd_ with no arguments will take you back to your home directory

**mv** - This will move or rename a file

* _mv project1.txt project2.txt_
* _mv project2.txt projects/calctest_proj/_

**rm** - This will delete a file

* _rm projects/calctest_proj/projects2.txt_
* _rm -r projects/calctest_proj/code_
The _-r_ flag recursively removes files and directories

**mkdir** - This will create a new directory
* _mkdir /home/myusername/financial_

Other Commands you may use: _alias, awk, cat, export, for, grep, gzip, if, less, sed, tar, while_

#### Learning the Linux Shell

A good tutorial for using linux can be found here:
[Learning the linux shell](http://linuxcommand.org/lc3_learning_the_shell.php)


# Preparing your environment

The CAD Cluster has an extensive library of applications and software available. There are numerous programming languages and libraries (R, Julia, Python, lua, OpenMPI, blas, etc) as well as dozens of applications (Matlab, Stata, etc).  We also keep older versions of software to ensure compatibility.

Because of this, the cluster developers use a tool called module to allow a user to load a specific version of an application, language or library and start using it for their work. The _module_ command will show you what software is available to load, and will add the software to your environment for immediate use. To show all software available to load type the following:

  `module avail`

You will see a long list of available modules to load, including a path, eg _lua/5.3.5_
However, instead of searching through a long list, if you know you want to use lua, you can find the path with the eo-module-find command:

  `module keyword lua`

If you want to know more about a particular module you can use the whatis subcommand.  Some modules have this available, for instance:

```
  module whatis R/CRAN/3.5

  R/CRAN/3.5          : Adds the R library path to the pre-built CRAN modules
```

#### Adding or loading software

Once you have found the module path you can load the software:

  `module load lua/5.3.5`

After the module loads you can type srun --pty lua at a prompt, or add it to the path of your lua script (the RC team recommends using /usr/bin/env instead of an absolute path).

Showing/listing the module environment modifications
You can discover what the module will load into your environment you can run module show, for example here is what gurobi adds:

```
module show R/3.5.1
--------------------------------------------------
   /home/software/vuwrc/modulefiles/R/3.5.1:
--------------------------------------------------

whatis("Adds the R language path to your environment ")
prepend_path("PATH","/home/software/apps/R/3.5.1/bin")
```

#### Listing loaded modules

To see what modules you have loaded into your environment you can run the command:

_module list_  

By default you will have the config module loaded (please do not unload that module).  For example, here are the modules I have loaded in my environment when I wrote this section:

```
module list

Currently Loaded Modules:
  1) config   2) tassel/3   3) python/3.7.0   4) python/modules/3.7

```

# Running jobs

#### Batch jobs

To run a batch job (aka a job that runs unattended) you use the _sbatch_ command.  A simple example would look something like this:

  `sbatch myjob.sh`

In this example the sbatch command runs the file myjob.sh, the contents of this file, also known as a "batch submit script" could look something like this:

```
 #!/bin/bash
 #SBATCH --cpus-per-task=2
 #SBATCH --mem-per-cpu=2G
 #SBATCH --partition=main
 #SBATCH --time=3-12:00
 #SBATCH -o /home/username/project1.out
 #SBATCH -e /home/username/project1.err
 #SBATCH --mail-type=BEGIN,END,FAIL
 #SBATCH --mail-user=me@email.com

 module load python/3.6.3
 python3 project1.py

```

This will request 2 CPUs and 4GB of memory (2GB per CPU) and a runtime of 3 days 12 hours.  We are requesting that this job be run on the main partition, it will then load the environment module for python version 3.6.3 and run a python script called project1.py.  Any output from the script will be placed in your home directory in a file named project1.out and any error information in a file called project1.err.  If you do not specify an output or error file, the default files will have the form of Slurm-jobID.o and Slurm-jobID.e and will be located in the directory from which you ran _sbatch_.

NOTE:  We have this example script available to copy on the cluster, you can type the following to copy it to your home directory:

  `cp /home/software/vuwrc/examples/batch/myjob.sh ~/myjob.sh`

The ~/ in front of the file is a short-cut to your home directory path.  You will want to edit this file accordingly.

#### Interactive jobs

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
* R - the command you wish to run, this could also be matlab, mathematica, SAS, etc. (just remember to load the module first)# Parallel Jobs

# Parallel processing

Running a job in parallel is a great way to utilize the power of the cluster.  So what is a parallel job/workflow?

* Loosely-coupled jobs (sometimes referred to as embarrassingly or naively parallel jobs) are processes in which multiple instances of the same program execute on multiple data files simultaneously, with each instance running independently from others on its own allocated resources (i.e. CPUs and memory). Slurm job arrays offer a simple mechanism for achieving this.
* Multi-threaded programs that include explicit support for shared memory processing via multiple threads of execution (e.g. Posix Threads or OpenMP) running across multiple CPU cores.
* Distributed memory programs that include explicit support for message passing between processes (e.g. MPI). These processes execute across multiple CPU cores and/or nodes, these are often referred to as tightly-coupled jobs.
* GPU (graphics processing unit) programs including explicit support for offloading to the device via languages like CUDA or OpenCL.

It is important to understand the capabilities and limitations of an application in order to fully leverage the parallel processing options available on the cluster. For instance, many popular scientific computing languages like Python, R, and Matlab now offer packages that allow for GPU, multi-core or multithreaded processing, especially for matrix and vector operations

#### Job Array Example
Here is an example of running a job array to run 50 simultaneous processes:

  `sbatch array.sh`

The contents of the array.sh batch script looks like this:

```
  #!/bin/bash
  #SBATCH -a 1-50
  #SBATCH --cpus-per-task=1
  #SBATCH --mem-per-cpu=2G
  #SBATCH --time=00:10:00
  #SBATCH --partition=main
  #SBATCH --mail-type=BEGIN,END,FAIL
  #SBATCH --mail-user=me@email.com

  bash addit.sh

```

So what do these parameter mean?:

* _-a_ sets this up as a parallel array job (this sets up the "loop" that will be run
* _--cpus-per-task_ requests the number of CPUs per array task, in this case I just want one CPU per task, we will use 50 in total
* _--mem-per-cpu_ request 2GB of RAM per CPU, for this parallel job I will request a total of 100GB RAM (50 CPUs * 2GB RAM)
* _--time_ is the max run time for this job, 10 minutes in this case
* _--partition_ assigns this job to a partition
* _bash addit.sh_ run the shell script: addit.sh  

You will notice that this batch script runs the program addit.sh and passes the argument $SLURM_ARRAY_TASK_ID, this variable contains the array number, 1-50 in this case,

This is what the addit.sh script contains, it is a simple example but should show you how to run and use the job array and variables:

```
  #!/bin/bash
  echo "The compute node this is running on is $HOSTNAME"
  # $1 is the variable containing the Task ID which was passed to this script as an argument
  # using the $SLURM_ARRAY_TASK_ID variable in the array.sh submit script
  echo "Task ID is $1"
  # $RANDOM is a built-in pseudo random number generated number, we will add the Task ID to a random number
  sum=`expr $1 + $RANDOM`
  echo "Output is $sum"
```

Running the array.sh script will cause the SLURM manager to spawn 50 parallel jobs.



#### Multi-threaded or Multi-processing Job Example

Multi-threaded or multi-processing programs are applications that are able to execute in parallel across multiple CPU cores within a single node using a shared memory execution model. In general, a multi-threaded application uses a single process (aka “task” in Slurm) which then spawns multiple threads of execution. By default, Slurm allocates 1 CPU core per task. In order to make use of multiple CPU cores in a multi-threaded program, one must include the --cpus-per-task option.  Below is an example of a multi-threaded program requesting 12 CPU cores per task and a total of 8GB of memory. The program itself is responsible for spawning the appropriate number of threads.

```
  #!/bin/bash
  #SBATCH --nodes=1
  #SBATCH --ntasks=1
  #SBATCH --cpus-per-task=12 # 12 threads per task
  #SBATCH --time=02:00:00 # two hours
  #SBATCH --mem=8G
  #SBATCH --output=threaded.out
  #SBATCH --job-name=threaded
  #SBATCH --mail-type=BEGIN,END,FAIL
  #SBATCH --mail-user=me@email.com
  # Run multi-threaded application
  module load java/1.8.0-91
  java -jar threaded-app.jar
```

#### MPI Jobs

Most users do not require MPI to run their jobs but many do.  Please read on if you want to learn more about using MPI for tightly-coupled jobs.

MPI (Message Passing Interface) code require special attention within Slurm. Slurm allocates and launches MPI jobs differently depending on the version of MPI used (e.g. OpenMPI, MPICH2). We recommend using OpenMPI version 2.1.1 or later to compile your C code (using mpicc) and then using the mpirun command in a batch submit script to launch parallel MPI jobs. The example below runs MPI code compiled by OpenMPI 2.1.1:

```
  #!/bin/bash
  #SBATCH --nodes=3
  #SBATCH --tasks-per-node=8 # 8 MPI processes per node
  #SBATCH --time=3-00:00:00
  #SBATCH --mem=4G # 4 GB RAM per node
  #SBATCH --output=mpi_job.log
  #SBATCH -p main
  #SBATCH --mail-type=BEGIN,END,FAIL
  #SBATCH --mail-user=me@email.com

  module load openmpi
  echo $SLURM_JOB_NODELIST
  mpirun -np 24 mpiscript.o

```

This example requests 3 nodes and 8 tasks (i.e. processes) per node, for a total of 24 tasks.  I use this number to tell mpirun how many processes to start, -np 24

NOTE:  If using python or another language you will also need to add the --oversubscribe parameter to mpirun, eg.

  `mpirun --oversubscribe -np 24 mpiscript.py`

More information about running MPI jobs within Slurm can be found here here: http://slurm.schedmd.com/mpi_guide.html.

# Managing Jobs

#### Cancelling a Job

To cancel a job, first find the jobID, you can use the _vuw-myjobs_ (or _squeue_) command to see a list of your jobs, including jobIDs.  Once you have that you can use the _scancel_ command, eg

   `scancel 236789`

To cancel all of your jobs you can use the -u flag followed by your username:

   `scancel -u harrelwe`


#### Viewing Job statistics

If you want to get a quick view of all the jobs completed within the last 48 hours you can use the _vuw-history_ command, for example:

```
  vuw-job-history

  MY JOBS WITHIN LAST 48 HOURS
   JobID State MaxVMSize JobName End
  ------------ ---------- ---------- ---------- -------------------
  3054196 CANCELLED+ bash 2017-05-10T15:12:31
  3105606 CANCELLED+ bash 2017-05-11T14:21:43
  3105608 COMPLETED 268592K bash 2017-05-11T14:31:44
  3105622 COMPLETED 268592K bash 2017-05-11T14:34:17
  3105656 COMPLETED 268592K bash 2017-05-11T14:43:09
```

You can also get a report of your completed jobs using the _sacct_ command.  For example if I wanted to get a report on how much memory my job used I could do the following:

   `sacct --format="MaxVMSize" -j 2156`

* MaxVMSize will report the maximum virtual memory (RAM plus swap space) used by my job in KiloBytes, divide that number by 1024 for MegaBytes, and then that number can be divided by 1024 to see it in GigaBytes..  
* -j 2156 shows the information for job ID 2156
* type _man sacct_ at a prompt in engaging to see the documentation on the _sacct_ command


#### Viewing jobs in the Queue


To view your running jobs you can type the vuw-myjobs  eg:


```
           [harrelwe@node142 ~]$ vuw-myjobs
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
           7921967 main          bash harrelwe  R       0:12      1 node142
```

As you can see I have a single job running on node142 on the main partition

You can see all the jobs in the queues by running the _vuw-alljobs_ command.  This will produce a very long list of jobs if the cluster is busy.

#### Job Queuing (aka Why isn't my job running?)

When a partition is busy, jobs will be placed in a queue.  You can observe this in the vuw-myjobs and vuw-alljobs commands.  The STATE of your job will be PENDING, this means it is waiting for resources or your job has been re-prioritized to allow other users access to run their jobs (this is called fair-share queueing).

The resource manager will list a reason the job is pending, these reasons can include:

* **Priority** - Your job priority has been reduced to allow other users access to the cluster.  If no other user with normal priority is also pending then your job will start once resources are available.  Possible reasons why your priority has been lowered can include:  the number of jobs you have run in the past 24-48 hours; the duration of the job and the amount of resources requested.  The Slurm manager uses fair-share queuing to ensure the best use of the cluster.  You can google fair-share queuing  if you want to know more
* **Resources**- There are insufficient resources to start your job.  Some combination of CPU, Memory, Time or other specialized resource are unavailable.  Once resources are freed up your job will begin to run.  
Time:   If you request more time than the max run-time of a partition, your job will be queued indefinitely (in other words:  it will never run).  Your time request must be less than or equal to the Partition Max Run-Time.  Also if a special reservation is placed on the cluster, for instance prior to a scheduled maintenance, this too will reduce the available time to run your job.  You can see Max Run-Time for our partitions described in this document.  CAD or ITS Staff will alert all users prior to any scheduled maintenance and advise them of the time restrictions.
* **QOSMaxCPUPerUser** - This is a Quality of Service configuration to limit the number of CPUs per user.   The QOSMax is the maximum that can be requested for any single job.  If a user requests more CPUs than the QOSMax for a single job then the job will not run.  If the user requests more than QOSMax in 2 or more jobs then the subsequent jobs will queue until the users running jobs complete.
* **QOSMaxMemPerUser** - This is a Quality of Service configuration to limit the memory usage per user.   The QOSMax is the maximum that can be requested for any single job.  If a user requests more Memory than the QOSMax for a single job then the job will not run.  If the user requests more than QOSMax in 2 or more jobs then the subsequent jobs will queue until the users running jobs complete.
* **PartitionTimeLimit** - This means you have requested more time than the maximum runtime of the partition.  This document contains information about the different partitions, including max run-time.  Typing _vuw-partition_ will also show the max run-time for the partitions available to you.
* **ReqNodeNotAvail** - 99% of the time you will receive this code if you have asked for too much time. This frequently occurs when the cluster is about to go into maintenance and a reservation has been placed on the cluster, which reduces the maximum run-time of all jobs.  For example, if maintenance on the cluster is 1 week away, the maximum run-time on all jobs needs to be less than 1 week, regardless if the configured maximum run-time on a partition is greater than 1 week.  To request time you can use the --time parameter.  Another issue is if you request too much memory or a CPU configuration that does not exist on any node in a partition.  
* **Required node not available (down, drained or reserved)** - This is related to ReqNodeNotAvail, see above.

# Using Containers

Researchers can use Docker or Singularity containers within the cluster.  This is a great way to run difficult-to-compile applications or to share workflows among colleagues.

#### Running an interactive container

User can run within a container interactively, this is great for testing code before running a job.  Here is an example of running within a docker container that has the blockchain software called BlockSci:

```
module load singularity
srun --pty -c 4 --mem=16G bash
singularity pull docker://tislaamo/blocksci
singularity shell blocksci.simg
```

Once you have typed the _singularity shell_ command you will be within the
container and can type the commands available from within the container such as
the BlockSci utility **blocksci_parser**

#### Running a container in batch

Running a batch job with containers is similar to running a regular job, but will ultimately depend on how the container was created, so your mileage may vary.  Here is an example batch submit script that will run the BlockSci software that was created in an Ubuntu docker image, lets name the submit file runContainer.sh:

```
#SBATCH -J blockchain_parser
#SBATCH -c 4
#SBATCH --mem=16G
#SBATCH --mailtype=BEGIN,END,FAIL
#SBATCH --mail-user=myemail@email.net
#SBATCH --time=12:00:00

module load singularity
singularity exec blocksci.simg blocksci_parser --output-directory bitcoin-data update disk --coin-directory bitcoin
```

Now to run the file you can:

```
module load singularity
singularity pull docker://tislaamo/blocksci
sbatch runContainer.sh
```

Note that _singularity shell_ is primarily for interactive use and _singularity exec_ (or possibly _singularity run_) are for executing the applications that were built within the container directly.  It is important to know how the container was created to make effective use of the software.
