#!/bin/bash

#SBATCH -c 2
#SBATCH --mem=4G
#SBATCH --time=01:00:00
#SBATCH -o notebook-%A.out

IP=`hostname -i`
PORT=`shuf -i 2000-65000 -n 1`

export XDG_RUNTIME_DIR=""

module use /home/software/tools/eb_modulefiles/all/Core  #new module system

#With the new module system, we need to load the compiler the tool was built with before we can load the tool we want
module load foss/2020b
module load JupyterLab/2.2.8

jupyter-lab --ip=$IP --port=$PORT --no-browser
