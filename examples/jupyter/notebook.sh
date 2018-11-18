#!/bin/bash

#SBATCH -c 2
#SBATCH --mem=4G
#SBATCH --time=08:00:00
#SBATCH -o notebook-%A.out

IP=`hostname -i`
PORT=`shuf -i 2000-65000 -n 1`

module load jupyter/notebook
export XDG_RUNTIME_DIR=""
jupyter-notebook --ip=$IP --port=$PORT --no-browser
