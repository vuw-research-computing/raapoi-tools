help([==[

Description
===========
Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.


More information
================
 - Homepage: https://www.mesa3d.org/
]==])

whatis([==[Description: Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.]==])
whatis([==[Homepage: https://www.mesa3d.org/]==])
whatis([==[URL: https://www.mesa3d.org/]==])

local root = "/home/software/EasyBuild/software/Mesa/18.1.1-foss-2018b"

conflict("Mesa")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("nettle/3.4") ) then
    load("nettle/3.4")
end

if not ( isloaded("libdrm/2.4.92") ) then
    load("libdrm/2.4.92")
end

if not ( isloaded("LLVM/6.0.0") ) then
    load("LLVM/6.0.0")
end

if not ( isloaded("X11/20180604") ) then
    load("X11/20180604")
end

if not ( isloaded("libunwind/1.2.1") ) then
    load("libunwind/1.2.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "18.1.1")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-Mesa-18.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
