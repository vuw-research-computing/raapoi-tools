help([==[

Description
===========
Efficient binary-decimal and decimal-binary conversion routines for IEEE doubles.


More information
================
 - Homepage: https://github.com/google/double-conversion
]==])

whatis([==[Description: Efficient binary-decimal and decimal-binary conversion routines for IEEE doubles.]==])
whatis([==[Homepage: https://github.com/google/double-conversion]==])
whatis([==[URL: https://github.com/google/double-conversion]==])

local root = "/home/software/EasyBuild/software/double-conversion/3.1.5-GCCcore-10.3.0"

conflict("double-conversion")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTDOUBLEMINCONVERSION", root)
setenv("EBVERSIONDOUBLEMINCONVERSION", "3.1.5")
setenv("EBDEVELDOUBLEMINCONVERSION", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-double-conversion-3.1.5-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
