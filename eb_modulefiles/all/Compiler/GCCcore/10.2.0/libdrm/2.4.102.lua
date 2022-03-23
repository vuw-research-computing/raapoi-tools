help([==[

Description
===========
Direct Rendering Manager runtime library.


More information
================
 - Homepage: https://dri.freedesktop.org
]==])

whatis([==[Description: Direct Rendering Manager runtime library.]==])
whatis([==[Homepage: https://dri.freedesktop.org]==])
whatis([==[URL: https://dri.freedesktop.org]==])

local root = "/home/software/EasyBuild/software/libdrm/2.4.102-GCCcore-10.2.0"

conflict("libdrm")

if not ( isloaded("X11/20201008") ) then
    load("X11/20201008")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBDRM", root)
setenv("EBVERSIONLIBDRM", "2.4.102")
setenv("EBDEVELLIBDRM", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-libdrm-2.4.102-easybuild-devel"))

-- Built with EasyBuild version 4.3.5.dev0
