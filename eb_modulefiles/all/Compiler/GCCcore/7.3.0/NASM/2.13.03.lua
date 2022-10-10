help([==[

Description
===========
NASM: General-purpose x86 assembler


More information
================
 - Homepage: http://www.nasm.us/
]==])

whatis([==[Description: NASM: General-purpose x86 assembler]==])
whatis([==[Homepage: http://www.nasm.us/]==])
whatis([==[URL: http://www.nasm.us/]==])

local root = "/home/software/EasyBuild/software/NASM/2.13.03-GCCcore-7.3.0"

conflict("NASM")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNASM", root)
setenv("EBVERSIONNASM", "2.13.03")
setenv("EBDEVELNASM", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-NASM-2.13.03-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
