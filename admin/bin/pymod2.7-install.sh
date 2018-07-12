#!/bin/bash
#
#
# CFLAGS required to build some modules, eg cffi, which is a requirement for scrapy
export CFLAGS="-I$TMPTARGET/libffi-3.2.1/include -L$TMPTARGET64"
export TMPTARGET=/tmp/py27
export TARGET=$TMPTARGET/py27
#
module load engaging/python/2.7.12
module load sloan/python/modules/2.7
module load engaging/unixODBC
module load sloan/database/drivers/freetds/0.95.95

mkdir $TMPTARGET
#
pip2.7 install numpy --target=$TMPTARGET/py27 --upgrade
pip2.7 install pandas --target=$TMPTARGET/py27 --upgrade
pip2.7 install matplotlib --target=$TMPTARGET/py27 --upgrade
pip2.7 install scipy --target=$TMPTARGET/py27 --upgrade
pip2.7 install mpmath --target=$TMPTARGET/py27 --upgrade
pip2.7 install csvkit --target=$TMPTARGET/py27 --upgrade
pip2.7 install prettyplotlib --target=$TMPTARGET/py27 --upgrade
pip2.7 install plotly --target=$TMPTARGET/py27 --upgrade
pip2.7 install ggplot --target=$TMPTARGET/py27 --upgrade
pip2.7 install Bokeh --target=$TMPTARGET/py27 --upgrade
pip2.7 install PyMC --target=$TMPTARGET/py27 --upgrade
pip2.7 install Scikit-learn --target=$TMPTARGET/py27 --upgrade
pip2.7 install Scikit-image --target=$TMPTARGET/py27 --upgrade
pip2.7 install SymPy --target=$TMPTARGET/py27 --upgrade
pip2.7 install Statsmodels --target=$TMPTARGET/py27 --upgrade
pip2.7 install jupyter-core --target=$TMPTARGET/py27 --upgrade
pip2.7 install Scrapy --target=$TMPTARGET/py27 --upgrade
pip2.7 install networkx --target=$TMPTARGET/py27 --upgrade
pip2.7 install selenium --target=$TMPTARGET/py27 --upgrade
pip2.7 install boto3 --target=$TMPTARGET/py27 --upgrade
pip2.7 install google --target=$TMPTARGET/py27 --upgrade
pip2.7 install pyodbc --target=$TMPTARGET/py27 --upgrade
pip2.7 install pymssql --target=$TMPTARGET/py27 --upgrade
pip2.7 install PyMySQL --target=$TMPTARGET/py27 --upgrade
pip2.7 install textstat --target=$TMPTARGET/py27 --upgrade

echo "Build complete, check $TMPTARGET and then move to $TARGET"
