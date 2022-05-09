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

local root = "/home/software/EasyBuild/software/Mesa/21.1.1-GCCcore-10.3.0"

conflict("Mesa")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("zstd/1.4.9") ) then
    load("zstd/1.4.9")
end

if not ( isloaded("libdrm/2.4.106") ) then
    load("libdrm/2.4.106")
end

if not ( isloaded("libglvnd/1.3.3") ) then
    load("libglvnd/1.3.3")
end

if not ( isloaded("libunwind/1.4.0") ) then
    load("libunwind/1.4.0")
end

if not ( isloaded("LLVM/11.1.0") ) then
    load("LLVM/11.1.0")
end

if not ( isloaded("X11/20210518") ) then
    load("X11/20210518")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "21.1.1")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Mesa-21.1.1-easybuild-devel"))

prepend_path("__EGL_VENDOR_LIBRARY_DIRS", pathJoin(root, "share/glvnd/egl_vendor.d"))
-- Built with EasyBuild version 4.5.3
