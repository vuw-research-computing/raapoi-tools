#!/bin/bash
#
#SBATCH --job-name=python_test
#SBATCH -o python_test.out
#SBATCH -e python_test.err
#
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=10:00
#
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=me@email.com

module load python/3.6.6 

source mytest/bin/activate 
srun python test.py
