#!/bin/bash
#
#SBATCH -c 2
#SBATCH --mem=8G
#SBATCH -p parallel
#SBATCH --time=2-00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=wes.harrell@vuw.ac.nz
#
# CFLAGS required to build some modules, eg cffi, which is a requirement for scrapy
#export CFLAGS="-I/home/software/apps/local/lib/libffi-3.2.1/include -L/home/software/sloan/local/lib64"
export PIP=pip3
#
module load python/3.7.0
module load python/modules/3.7
#
for mod in $( cat ../etc/py37-mods.txt ); do
  $PIP install $mod --target=/home/software/apps/local/lib/py37 --upgrade
done
