help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
Bottleneck-1.3.2, deap-1.3.1, mpi4py-3.0.3, mpmath-1.1.0, numexpr-2.7.1,
numpy-1.19.4, pandas-1.1.4, scipy-1.5.4
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: Bottleneck-1.3.2, deap-1.3.1, mpi4py-3.0.3, mpmath-1.1.0, numexpr-2.7.1, numpy-1.19.4, pandas-1.1.4, scipy-1.5.4]==])

local root = "/home/software/EasyBuild/software/SciPy-bundle/2020.11-foss-2020b"

conflict("SciPy-bundle")

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

if not ( isloaded("pybind11/2.6.0") ) then
    load("pybind11/2.6.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2020.11")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-SciPy-bundle-2020.11-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.3
prepend_path("CPATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.19.4,scipy-1.5.4,mpi4py-3.0.3,numexpr-2.7.1,Bottleneck-1.3.2,pandas-1.1.4,mpmath-1.1.0,deap-1.3.1")
