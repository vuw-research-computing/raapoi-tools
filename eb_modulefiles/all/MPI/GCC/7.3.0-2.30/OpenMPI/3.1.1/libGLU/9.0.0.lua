help([==[

Description
===========
The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL.


More information
================
 - Homepage: https://mesa.freedesktop.org/archive/glu/
]==])

whatis([==[Description: The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL. ]==])
whatis([==[Homepage: https://mesa.freedesktop.org/archive/glu/]==])
whatis([==[URL: https://mesa.freedesktop.org/archive/glu/]==])

local root = "/home/software/EasyBuild/software/libGLU/9.0.0-foss-2018b"

conflict("libGLU")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("Mesa/18.1.1") ) then
    load("Mesa/18.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLU", root)
setenv("EBVERSIONLIBGLU", "9.0.0")
setenv("EBDEVELLIBGLU", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-libGLU-9.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
