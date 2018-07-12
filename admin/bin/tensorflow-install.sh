#!/bin/bash
#
#
# CFLAGS required to build some modules, eg cffi, which is a requirement for scrapy
export CFLAGS="-I/home/software/sloan/local/lib/libffi-3.2.1/include -L/home/software/sloan/local/lib64"
#
module load sloan/python/modules/2.7
module load engaging/unixODBC
module load sloan/freetds/0.95.95

#
pip2.7 install numpy --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install pandas --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install matplotlib --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install scipy --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install mpmath --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install csvkit --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install prettyplotlib --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install plotly --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install ggplot --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install Bokeh --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install PyMC --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install Scikit-learn --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install Scikit-image --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install SymPy --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install Statsmodels --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install jupyter-core --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install Scrapy --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install networkx --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install selenium --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install boto3 --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install google --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install pyodbc --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install pymssql --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install PyMySQL --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install textstat --target=/home/software/sloan/local/lib/py27 --upgrade
pip2.7 install sklean --target=/home/software/sloan/local/lib/py27 --upgrade

