#!/bin/bash
#
#SBATCH -c 2
#SBATCH --mem=8G
#SBATCH -p sched_mit_sloan_interactive
#SBATCH --time=2-00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=sts.rc@mit.edu
#
# CFLAGS required to build some modules, eg cffi, which is a requirement for scrapy
export CFLAGS="-I/home/software/sloan/local/lib/libffi-3.2.1/include -L/home/software/sloan/local/lib64"
export PIP=pip3.6
#
module load engaging/python/3.6.0
module load sloan/python/modules/3.6
#
$PIP install numpy --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install pandas --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install matplotlib --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install scipy --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install mpmath --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install csvkit --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install prettyplotlib --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install plotly --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install ggplot --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install Bokeh --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install PyMC --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install Scikit-learn --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install Scikit-image --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install SymPy --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install Statsmodels --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install jupyter-core --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install Scrapy --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install networkx --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install boto3 --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install gensim --target=/home/software/sloan/local/lib/py36 --upgrade
$PIP install saspy --target=/home/software/sloan/local/lib/py36 --upgrade
#$PIP install tensorflow --target=/home/software/sloan/local/lib/py36 --upgrade

