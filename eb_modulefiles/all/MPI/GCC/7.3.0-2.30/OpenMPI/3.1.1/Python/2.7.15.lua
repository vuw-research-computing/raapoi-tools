help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: https://python.org/


Included extensions
===================
asn1crypto-0.24.0, bcrypt-3.1.4, bitstring-3.1.5, blist-1.3.6,
certifi-2018.4.16, cffi-1.11.5, chardet-3.0.4, cryptography-2.2.2,
Cython-0.28.3, deap-1.2.2, decorator-4.3.0, docopt-0.6.2, ecdsa-0.13,
enum34-1.1.6, funcsigs-1.0.2, idna-2.7, ipaddress-1.0.22, joblib-0.11, liac-
arff-2.2.2, mock-2.0.0, mpi4py-3.0.0, netaddr-0.7.19, netifaces-0.10.7,
nose-1.3.7, numpy-1.14.5, pandas-0.23.1, paramiko-2.4.1, paycheck-1.0.2,
pbr-4.0.4, pip-10.0.1, py_expression_eval-0.3.4, pyasn1-0.4.3, pycparser-2.18,
pycrypto-2.6.1, PyNaCl-1.2.1, pyparsing-2.2.0, python-dateutil-2.7.3,
pytz-2018.4, requests-2.19.1, scipy-1.1.0, setuptools-39.2.0,
setuptools_scm-3.2.0, six-1.11.0, urllib3-1.23, virtualenv-16.0.0, xlrd-1.1.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: asn1crypto-0.24.0, bcrypt-3.1.4, bitstring-3.1.5, blist-1.3.6, certifi-2018.4.16, cffi-1.11.5, chardet-3.0.4, cryptography-2.2.2, Cython-0.28.3, deap-1.2.2, decorator-4.3.0, docopt-0.6.2, ecdsa-0.13, enum34-1.1.6, funcsigs-1.0.2, idna-2.7, ipaddress-1.0.22, joblib-0.11, liac-arff-2.2.2, mock-2.0.0, mpi4py-3.0.0, netaddr-0.7.19, netifaces-0.10.7, nose-1.3.7, numpy-1.14.5, pandas-0.23.1, paramiko-2.4.1, paycheck-1.0.2, pbr-4.0.4, pip-10.0.1, py_expression_eval-0.3.4, pyasn1-0.4.3, pycparser-2.18, pycrypto-2.6.1, PyNaCl-1.2.1, pyparsing-2.2.0, python-dateutil-2.7.3, pytz-2018.4, requests-2.19.1, scipy-1.1.0, setuptools-39.2.0, setuptools_scm-3.2.0, six-1.11.0, urllib3-1.23, virtualenv-16.0.0, xlrd-1.1.0]==])

local root = "/home/software/EasyBuild/software/Python/2.7.15-foss-2018b"

conflict("Python")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("bzip2/1.0.6") ) then
    load("bzip2/1.0.6")
end

if not ( isloaded("libreadline/7.0") ) then
    load("libreadline/7.0")
end

if not ( isloaded("ncurses/6.1") ) then
    load("ncurses/6.1")
end

if not ( isloaded("SQLite/3.24.0") ) then
    load("SQLite/3.24.0")
end

if not ( isloaded("GMP/6.1.2") ) then
    load("GMP/6.1.2")
end

if not ( isloaded("libffi/3.2.1") ) then
    load("libffi/3.2.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.15")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 4.4.1
prepend_path("CPATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.5-py2.7-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.5-py2.7-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.5-py2.7-linux-x86_64.egg/numpy/core/lib"))
setenv("EBEXTSLISTPYTHON", "setuptools-39.2.0,pip-10.0.1,nose-1.3.7,numpy-1.14.5,scipy-1.1.0,blist-1.3.6,mpi4py-3.0.0,paycheck-1.0.2,pbr-4.0.4,Cython-0.28.3,six-1.11.0,setuptools_scm-3.2.0,python-dateutil-2.7.3,deap-1.2.2,decorator-4.3.0,liac-arff-2.2.2,pycrypto-2.6.1,ecdsa-0.13,enum34-1.1.6,ipaddress-1.0.22,asn1crypto-0.24.0,idna-2.7,pycparser-2.18,cffi-1.11.5,cryptography-2.2.2,pyasn1-0.4.3,PyNaCl-1.2.1,bcrypt-3.1.4,paramiko-2.4.1,pyparsing-2.2.0,netifaces-0.10.7,netaddr-0.7.19,funcsigs-1.0.2,mock-2.0.0,pytz-2018.4,pandas-0.23.1,bitstring-3.1.5,virtualenv-16.0.0,docopt-0.6.2,joblib-0.11,chardet-3.0.4,certifi-2018.4.16,urllib3-1.23,requests-2.19.1,xlrd-1.1.0,py_expression_eval-0.3.4")
