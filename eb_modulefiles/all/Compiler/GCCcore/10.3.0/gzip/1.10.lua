help([==[

Description
===========
gzip (GNU zip) is a popular data compression program as a replacement for compress


More information
================
 - Homepage: https://www.gnu.org/software/gzip/
]==])

whatis([==[Description: gzip (GNU zip) is a popular data compression program as a replacement for compress]==])
whatis([==[Homepage: https://www.gnu.org/software/gzip/]==])
whatis([==[URL: https://www.gnu.org/software/gzip/]==])

local root = "/home/software/EasyBuild/software/gzip/1.10-GCCcore-10.3.0"

conflict("gzip")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGZIP", root)
setenv("EBVERSIONGZIP", "1.10")
setenv("EBDEVELGZIP", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-gzip-1.10-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
