help([==[

Description
===========
HDF5 for Python (h5py) is a general-purpose Python interface to the Hierarchical Data Format library,
 version 5. HDF5 is a versatile, mature scientific software library designed for the fast, flexible storage of enormous
 amounts of data.


More information
================
 - Homepage: https://www.h5py.org/
]==])

whatis([==[Description: HDF5 for Python (h5py) is a general-purpose Python interface to the Hierarchical Data Format library,
 version 5. HDF5 is a versatile, mature scientific software library designed for the fast, flexible storage of enormous
 amounts of data.]==])
whatis([==[Homepage: https://www.h5py.org/]==])
whatis([==[URL: https://www.h5py.org/]==])

local root = "/home/software/EasyBuild/software/h5py/3.1.0-foss-2020b"

conflict("h5py")

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("SciPy-bundle/2020.11") ) then
    load("SciPy-bundle/2020.11")
end

if not ( isloaded("HDF5/1.10.7") ) then
    load("HDF5/1.10.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTH5PY", root)
setenv("EBVERSIONH5PY", "3.1.0")
setenv("EBDEVELH5PY", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-h5py-3.1.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
