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