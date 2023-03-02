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

local root = "/home/software/EasyBuild/software/h5py/3.2.1-foss-2021a"

conflict("h5py")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("SciPy-bundle/2021.05") ) then
    load("SciPy-bundle/2021.05")
end

if not ( isloaded("HDF5/1.10.7") ) then
    load("HDF5/1.10.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTH5PY", root)
setenv("EBVERSIONH5PY", "3.2.1")
setenv("EBDEVELH5PY", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-h5py-3.2.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.4.2
