#!/bin/bash
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=2G
#SBATCH --partition=parallel
#SBATCH --time=3-12:00
#SBATCH -o /home/username/project1.out
#SBATCH -e /home/username/project1.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=me@email.com

module load python/3.6.3
python3 project1.py
