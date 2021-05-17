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

local root = "/home/software/EasyBuild/software/Mesa/20.0.2-GCCcore-9.3.0"

conflict("Mesa")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("zstd/1.4.4") ) then
    load("zstd/1.4.4")
end

if not ( isloaded("libdrm/2.4.100") ) then
    load("libdrm/2.4.100")
end

if not ( isloaded("libglvnd/1.2.0") ) then
    load("libglvnd/1.2.0")
end

if not ( isloaded("libunwind/1.3.1") ) then
    load("libunwind/1.3.1")
end

if not ( isloaded("LLVM/9.0.1") ) then
    load("LLVM/9.0.1")
end

if not ( isloaded("X11/20200222") ) then
    load("X11/20200222")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "20.0.2")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-Mesa-20.0.2-easybuild-devel"))

prepend_path("__EGL_VENDOR_LIBRARY_DIRS", pathJoin(root, "share/glvnd/egl_vendor.d"))
-- Built with EasyBuild version 4.3.4
