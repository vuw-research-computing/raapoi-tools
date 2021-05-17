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
alabaster-0.7.12, appdirs-1.4.3, asn1crypto-1.3.0, atomicwrites-1.3.0,
attrs-19.3.0, Babel-2.8.0, bcrypt-3.1.7, bitstring-3.1.6, blist-1.3.6,
certifi-2020.4.5.1, cffi-1.14.0, chardet-3.0.4, click-7.1.1,
configparser-4.0.2, contextlib2-0.6.0.post1, cryptography-2.9.2,
Cython-0.29.16, decorator-4.4.2, distlib-0.3.0, docopt-0.6.2, docutils-0.16,
ecdsa-0.15, enum34-1.1.10, filelock-3.0.12, funcsigs-1.0.2, future-0.18.2,
idna-2.9, imagesize-1.2.0, importlib_metadata-1.6.0,
importlib_resources-1.4.0, intervaltree-3.0.2, ipaddress-1.0.23,
Jinja2-2.11.2, joblib-0.14.1, liac-arff-2.4.0, MarkupSafe-1.1.1, mock-3.0.5,
more-itertools-5.0.0, netaddr-0.7.19, netifaces-0.10.9, nose-1.3.7,
packaging-20.3, paramiko-2.7.1, pathlib2-2.3.5, paycheck-1.0.2, pbr-5.4.5,
pip-20.0.2, pluggy-0.13.1, psutil-5.7.0, py-1.8.1, py_expression_eval-0.3.9,
pyasn1-0.4.8, pycparser-2.20, pycrypto-2.6.1, Pygments-2.5.2, PyNaCl-1.3.0,
pyparsing-2.4.7, pytest-4.6.9, python-dateutil-2.8.1, pytz-2019.3,
requests-2.23.0, scandir-1.10.0, setuptools-44.0.0, setuptools_scm-3.5.0,
singledispatch-3.4.0.3, six-1.14.0, snowballstemmer-2.0.0,
sortedcontainers-2.2.2, Sphinx-1.8.5, sphinxcontrib-websupport-1.1.2,
tabulate-0.8.7, toml-0.10.0, typing-3.7.4.1, ujson-2.0.3, urllib3-1.25.9,
virtualenv-20.0.18, wcwidth-0.1.9, wheel-0.34.2, xlrd-1.2.0, zipp-1.2.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: alabaster-0.7.12, appdirs-1.4.3, asn1crypto-1.3.0, atomicwrites-1.3.0, attrs-19.3.0, Babel-2.8.0, bcrypt-3.1.7, bitstring-3.1.6, blist-1.3.6, certifi-2020.4.5.1, cffi-1.14.0, chardet-3.0.4, click-7.1.1, configparser-4.0.2, contextlib2-0.6.0.post1, cryptography-2.9.2, Cython-0.29.16, decorator-4.4.2, distlib-0.3.0, docopt-0.6.2, docutils-0.16, ecdsa-0.15, enum34-1.1.10, filelock-3.0.12, funcsigs-1.0.2, future-0.18.2, idna-2.9, imagesize-1.2.0, importlib_metadata-1.6.0, importlib_resources-1.4.0, intervaltree-3.0.2, ipaddress-1.0.23, Jinja2-2.11.2, joblib-0.14.1, liac-arff-2.4.0, MarkupSafe-1.1.1, mock-3.0.5, more-itertools-5.0.0, netaddr-0.7.19, netifaces-0.10.9, nose-1.3.7, packaging-20.3, paramiko-2.7.1, pathlib2-2.3.5, paycheck-1.0.2, pbr-5.4.5, pip-20.0.2, pluggy-0.13.1, psutil-5.7.0, py-1.8.1, py_expression_eval-0.3.9, pyasn1-0.4.8, pycparser-2.20, pycrypto-2.6.1, Pygments-2.5.2, PyNaCl-1.3.0, pyparsing-2.4.7, pytest-4.6.9, python-dateutil-2.8.1, pytz-2019.3, requests-2.23.0, scandir-1.10.0, setuptools-44.0.0, setuptools_scm-3.5.0, singledispatch-3.4.0.3, six-1.14.0, snowballstemmer-2.0.0, sortedcontainers-2.2.2, Sphinx-1.8.5, sphinxcontrib-websupport-1.1.2, tabulate-0.8.7, toml-0.10.0, typing-3.7.4.1, ujson-2.0.3, urllib3-1.25.9, virtualenv-20.0.18, wcwidth-0.1.9, wheel-0.34.2, xlrd-1.2.0, zipp-1.2.0]==])

local root = "/home/software/EasyBuild/software/Python/2.7.18-GCCcore-9.3.0"

conflict("Python")

if not ( isloaded("binutils/2.34") ) then
    load("binutils/2.34")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libreadline/8.0") ) then
    load("libreadline/8.0")
end

if not ( isloaded("ncurses/6.2") ) then
    load("ncurses/6.2")
end

if not ( isloaded("SQLite/3.31.1") ) then
    load("SQLite/3.31.1")
end

if not ( isloaded("GMP/6.2.0") ) then
    load("GMP/6.2.0")
end

if not ( isloaded("libffi/3.3") ) then
    load("libffi/3.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.18")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-Python-2.7.18-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTPYTHON", "setuptools-44.0.0,pip-20.0.2,wheel-0.34.2,nose-1.3.7,blist-1.3.6,paycheck-1.0.2,pbr-5.4.5,Cython-0.29.16,six-1.14.0,toml-0.10.0,setuptools_scm-3.5.0,python-dateutil-2.8.1,decorator-4.4.2,liac-arff-2.4.0,pycrypto-2.6.1,ecdsa-0.15,enum34-1.1.10,ipaddress-1.0.23,asn1crypto-1.3.0,idna-2.9,pycparser-2.20,cffi-1.14.0,cryptography-2.9.2,pyasn1-0.4.8,PyNaCl-1.3.0,bcrypt-3.1.7,paramiko-2.7.1,pyparsing-2.4.7,netifaces-0.10.9,netaddr-0.7.19,funcsigs-1.0.2,mock-3.0.5,pytz-2019.3,bitstring-3.1.6,appdirs-1.4.3,distlib-0.3.0,filelock-3.0.12,importlib_resources-1.4.0,virtualenv-20.0.18,docopt-0.6.2,joblib-0.14.1,chardet-3.0.4,certifi-2020.4.5.1,urllib3-1.25.9,requests-2.23.0,xlrd-1.2.0,py_expression_eval-0.3.9,tabulate-0.8.7,ujson-2.0.3,atomicwrites-1.3.0,py-1.8.1,scandir-1.10.0,pathlib2-2.3.5,zipp-1.2.0,configparser-4.0.2,contextlib2-0.6.0.post1,importlib_metadata-1.6.0,pluggy-0.13.1,more-itertools-5.0.0,attrs-19.3.0,wcwidth-0.1.9,pytest-4.6.9,MarkupSafe-1.1.1,Jinja2-2.11.2,packaging-20.3,sphinxcontrib-websupport-1.1.2,Pygments-2.5.2,imagesize-1.2.0,docutils-0.16,snowballstemmer-2.0.0,Babel-2.8.0,alabaster-0.7.12,typing-3.7.4.1,Sphinx-1.8.5,click-7.1.1,psutil-5.7.0,future-0.18.2,singledispatch-3.4.0.3,sortedcontainers-2.2.2,intervaltree-3.0.2")
