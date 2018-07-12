#!/bin/bash
#
#
# CFLAGS required to build some modules, eg cffi, which is a requirement for scrapy
export CFLAGS="-I/home/software/sloan/local/lib/libffi-3.2.1/include -L/home/software/sloan/local/lib64"
#
#module load engaging/python/3.5.1
#module load sloan/python/3.5-modules
#
pip3.5 install numpy --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install pandas --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install matplotlib --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install scipy --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install mpmath --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install csvkit --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install prettyplotlib --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install plotly --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install ggplot --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install Bokeh --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install PyMC --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install Scikit-learn --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install Scikit-image --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install SymPy --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install Statsmodels --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install jupyter-core --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install Scrapy --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install networkx --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install tensorflow --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install boto3 --target=/home/software/sloan/local/lib/py35 --upgrade
pip3.5 install gensim --target=/home/software/sloan/local/lib/py35 --upgrade

