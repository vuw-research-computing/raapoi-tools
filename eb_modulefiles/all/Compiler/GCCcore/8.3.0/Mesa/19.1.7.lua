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

local root = "/home/software/EasyBuild/software/Mesa/19.1.7-GCCcore-8.3.0"

conflict("Mesa")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("nettle/3.5.1") ) then
    load("nettle/3.5.1")
end

if not ( isloaded("libdrm/2.4.99") ) then
    load("libdrm/2.4.99")
end

if not ( isloaded("LLVM/9.0.0") ) then
    load("LLVM/9.0.0")
end

if not ( isloaded("X11/20190717") ) then
    load("X11/20190717")
end

if not ( isloaded("libunwind/1.3.1") ) then
    load("libunwind/1.3.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "19.1.7")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-Mesa-19.1.7-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
