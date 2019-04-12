#!/bin/bash
#
#SBATCH -c 2
#SBATCH --mem=8G
#SBATCH -p main
#SBATCH --time=2-00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=wesley@aandw.net
#
# CFLAGS required to build some modules, eg cffi, which is a requirement for scrapy
#export CFLAGS="-I/home/software/apps/local/lib/libffi-3.2.1/include -L/home/software/sloan/local/lib64"
export PIP=pip3
#
module load python/3.7.0
module load python/modules/3.7
#
$PIP install numpy --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install pandas --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install matplotlib --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install scipy --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install mpmath --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install csvkit --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install prettyplotlib --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install plotly --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install ggplot --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install Bokeh --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install PyMC --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install Scikit-learn --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install Scikit-image --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install SymPy --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install Statsmodels --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install jupyter-core --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install Scrapy --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install networkx --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install boto3 --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install gensim --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install saspy --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install tabulate --target=/home/software/apps/local/lib/py37 --upgrade
$PIP install sphinx --target=/home/software/apps/local/lib/py37 --upgrade

