help([==[

Description
===========
NASM: General-purpose x86 assembler


More information
================
 - Homepage: https://www.nasm.us/
]==])

whatis([==[Description: NASM: General-purpose x86 assembler]==])
whatis([==[Homepage: https://www.nasm.us/]==])
whatis([==[URL: https://www.nasm.us/]==])

local root = "/home/software/EasyBuild/software/NASM/2.14.02-GCCcore-8.3.0"

conflict("NASM")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNASM", root)
setenv("EBVERSIONNASM", "2.14.02")
setenv("EBDEVELNASM", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-NASM-2.14.02-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
