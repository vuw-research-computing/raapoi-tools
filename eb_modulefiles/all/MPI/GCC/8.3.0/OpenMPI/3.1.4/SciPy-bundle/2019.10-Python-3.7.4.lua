help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
mpi4py-3.0.2, mpmath-1.1.0, numpy-1.17.3, pandas-0.25.3, scipy-1.3.1
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: mpi4py-3.0.2, mpmath-1.1.0, numpy-1.17.3, pandas-0.25.3, scipy-1.3.1]==])

local root = "/home/software/EasyBuild/software/SciPy-bundle/2019.10-foss-2019b-Python-3.7.4"

conflict("SciPy-bundle")

if not ( isloaded("OpenBLAS/0.3.7") ) then
    load("OpenBLAS/0.3.7")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2") ) then
    load("ScaLAPACK/2.0.2")
end

if not ( isloaded("Python/3.7.4") ) then
    load("Python/3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2019.10")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-SciPy-bundle-2019.10-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.4
prepend_path("CPATH", pathJoin(root, "lib/python3.7/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.7/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.7/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.17.3,scipy-1.3.1,mpi4py-3.0.2,pandas-0.25.3,mpmath-1.1.0")
