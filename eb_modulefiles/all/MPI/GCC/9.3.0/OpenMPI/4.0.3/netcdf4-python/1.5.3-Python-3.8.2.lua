help([==[

Description
===========
Python/numpy interface to netCDF.


More information
================
 - Homepage: https://unidata.github.io/netcdf4-python/


Included extensions
===================
cftime-1.2.0, netcdf4-python-1.5.3
]==])

whatis([==[Description: Python/numpy interface to netCDF.]==])
whatis([==[Homepage: https://unidata.github.io/netcdf4-python/]==])
whatis([==[URL: https://unidata.github.io/netcdf4-python/]==])
whatis([==[Extensions: cftime-1.2.0, netcdf4-python-1.5.3]==])

local root = "/home/software/EasyBuild/software/netcdf4-python/1.5.3-foss-2020a-Python-3.8.2"

conflict("netcdf4-python")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Python/3.8.2") ) then
    load("Python/3.8.2")
end

if not ( isloaded("SciPy-bundle/2020.03-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-Python-3.8.2")
end

if not ( isloaded("netCDF/4.7.4") ) then
    load("netCDF/4.7.4")
end

if not ( isloaded("cURL/7.69.1") ) then
    load("cURL/7.69.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNETCDF4MINPYTHON", root)
setenv("EBVERSIONNETCDF4MINPYTHON", "1.5.3")
setenv("EBDEVELNETCDF4MINPYTHON", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-netcdf4-python-1.5.3-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTNETCDF4MINPYTHON", "cftime-1.2.0,netcdf4-python-1.5.3")
