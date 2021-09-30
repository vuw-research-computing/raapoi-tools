help([==[

Description
===========
FLTK is a cross-platform C++ GUI toolkit for UNIX/Linux (X11), Microsoft Windows,
 and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL
 and its built-in GLUT emulation.


More information
================
 - Homepage: http://www.fltk.org
]==])

whatis([==[Description: FLTK is a cross-platform C++ GUI toolkit for UNIX/Linux (X11), Microsoft Windows,
 and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL
 and its built-in GLUT emulation.]==])
whatis([==[Homepage: http://www.fltk.org]==])
whatis([==[URL: http://www.fltk.org]==])

local root = "/home/software/EasyBuild/software/FLTK/1.3.4-foss-2018b"

conflict("FLTK")

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

if not ( isloaded("libGLU/9.0.0") ) then
    load("libGLU/9.0.0")
end

if not ( isloaded("libpng/1.6.34") ) then
    load("libpng/1.6.34")
end

if not ( isloaded("libjpeg-turbo/2.0.0") ) then
    load("libjpeg-turbo/2.0.0")
end

if not ( isloaded("xprop/1.2.3") ) then
    load("xprop/1.2.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLTK", root)
setenv("EBVERSIONFLTK", "1.3.4")
setenv("EBDEVELFLTK", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-FLTK-1.3.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
