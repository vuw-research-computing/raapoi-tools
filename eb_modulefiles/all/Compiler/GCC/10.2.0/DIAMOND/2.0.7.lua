help([==[

Description
===========
Accelerated BLAST compatible local sequence aligner


More information
================
 - Homepage: https://github.com/bbuchfink/diamond
]==])

whatis([==[Description: Accelerated BLAST compatible local sequence aligner]==])
whatis([==[Homepage: https://github.com/bbuchfink/diamond]==])
whatis([==[URL: https://github.com/bbuchfink/diamond]==])

local root = "/home/software/EasyBuild/software/DIAMOND/2.0.7-GCC-10.2.0"

conflict("DIAMOND")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDIAMOND", root)
setenv("EBVERSIONDIAMOND", "2.0.7")
setenv("EBDEVELDIAMOND", pathJoin(root, "easybuild/Compiler-GCC-10.2.0-DIAMOND-2.0.7-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
