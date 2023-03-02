help([==[

Description
===========
Expat is an XML parser library written in C. It is a stream-oriented parser
 in which an application registers handlers for things the parser might find
 in the XML document (like start tags)


More information
================
 - Homepage: https://libexpat.github.io
]==])

whatis([==[Description: 
 Expat is an XML parser library written in C. It is a stream-oriented parser
 in which an application registers handlers for things the parser might find
 in the XML document (like start tags)
]==])
whatis([==[Homepage: https://libexpat.github.io]==])
whatis([==[URL: https://libexpat.github.io]==])

local root = "/home/software/EasyBuild/software/expat/2.4.8-GCCcore-11.3.0"

conflict("expat")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEXPAT", root)
setenv("EBVERSIONEXPAT", "2.4.8")
setenv("EBDEVELEXPAT", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-expat-2.4.8-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
