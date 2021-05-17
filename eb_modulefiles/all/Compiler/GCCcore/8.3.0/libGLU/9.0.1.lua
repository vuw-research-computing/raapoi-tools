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

local root = "/home/software/EasyBuild/software/libGLU/9.0.1-GCCcore-8.3.0"

conflict("libGLU")

if not ( isloaded("Mesa/19.1.7") ) then
    load("Mesa/19.1.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLU", root)
setenv("EBVERSIONLIBGLU", "9.0.1")
setenv("EBDEVELLIBGLU", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-libGLU-9.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
