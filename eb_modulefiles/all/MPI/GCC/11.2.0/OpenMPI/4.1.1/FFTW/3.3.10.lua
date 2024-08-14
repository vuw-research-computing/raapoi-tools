help([==[

Description
===========
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
in one or more dimensions, of arbitrary input size, and of both real and complex data.


More information
================
 - Homepage: https://www.fftw.org
]==])

whatis([==[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
in one or more dimensions, of arbitrary input size, and of both real and complex data.]==])
whatis([==[Homepage: https://www.fftw.org]==])
whatis([==[URL: https://www.fftw.org]==])

local root = "/home/software/EasyBuild/software/FFTW/3.3.10-gompi-2021b"

conflict("FFTW")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFFTW", root)
setenv("EBVERSIONFFTW", "3.3.10")
setenv("EBDEVELFFTW", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-FFTW-3.3.10-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
