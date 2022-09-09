help([==[

Description
===========
Python bindings for the cairo library


More information
================
 - Homepage: https://cairographics.org/pycairo/
]==])

whatis([==[Description: Python bindings for the cairo library]==])
whatis([==[Homepage: https://cairographics.org/pycairo/]==])
whatis([==[URL: https://cairographics.org/pycairo/]==])

local root = "/home/software/EasyBuild/software/PyCairo/1.18.0-foss-2018b-Python-2.7.15"

conflict("PyCairo")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("Python/2.7.15") ) then
    load("Python/2.7.15")
end

if not ( isloaded("cairo/1.14.12") ) then
    load("cairo/1.14.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYCAIRO", root)
setenv("EBVERSIONPYCAIRO", "1.18.0")
setenv("EBDEVELPYCAIRO", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-PyCairo-1.18.0-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib64/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.4.1
