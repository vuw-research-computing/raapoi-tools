help([==[

Description
===========
libglvnd is a vendor-neutral dispatch layer for arbitrating OpenGL API calls between multiple vendors.


More information
================
 - Homepage: https://github.com/NVIDIA/libglvnd
]==])

whatis([==[Description: libglvnd is a vendor-neutral dispatch layer for arbitrating OpenGL API calls between multiple vendors.]==])
whatis([==[Homepage: https://github.com/NVIDIA/libglvnd]==])
whatis([==[URL: https://github.com/NVIDIA/libglvnd]==])

local root = "/home/software/EasyBuild/software/libglvnd/1.2.0-GCCcore-9.3.0"

conflict("libglvnd")

if not ( isloaded("X11/20200222") ) then
    load("X11/20200222")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLVND", root)
setenv("EBVERSIONLIBGLVND", "1.2.0")
setenv("EBDEVELLIBGLVND", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-libglvnd-1.2.0-easybuild-devel"))

prepend_path("__EGL_VENDOR_LIBRARY_DIRS", "/etc/glvnd/egl_vendor.d:/usr/share/glvnd/egl_vendor.d")
-- Built with EasyBuild version 4.3.4
