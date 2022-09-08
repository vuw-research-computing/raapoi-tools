help([==[

Description
===========
utf8proc is a small, clean C library that provides Unicode normalization, case-folding, 
and other operations for data in the UTF-8 encoding.


More information
================
 - Homepage: https://github.com/JuliaStrings/utf8proc
]==])

whatis([==[Description: utf8proc is a small, clean C library that provides Unicode normalization, case-folding, 
and other operations for data in the UTF-8 encoding.]==])
whatis([==[Homepage: https://github.com/JuliaStrings/utf8proc]==])
whatis([==[URL: https://github.com/JuliaStrings/utf8proc]==])

local root = "/home/software/EasyBuild/software/utf8proc/2.6.1-GCCcore-10.3.0"

conflict("utf8proc")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTUTF8PROC", root)
setenv("EBVERSIONUTF8PROC", "2.6.1")
setenv("EBDEVELUTF8PROC", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-utf8proc-2.6.1-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
