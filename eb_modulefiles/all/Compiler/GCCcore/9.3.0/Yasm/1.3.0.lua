help([==[

Description
===========
Yasm: Complete rewrite of the NASM assembler with BSD license


More information
================
 - Homepage: https://www.tortall.net/projects/yasm/
]==])

whatis([==[Description: Yasm: Complete rewrite of the NASM assembler with BSD license]==])
whatis([==[Homepage: https://www.tortall.net/projects/yasm/]==])
whatis([==[URL: https://www.tortall.net/projects/yasm/]==])

local root = "/home/software/EasyBuild/software/Yasm/1.3.0-GCCcore-9.3.0"

conflict("Yasm")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTYASM", root)
setenv("EBVERSIONYASM", "1.3.0")
setenv("EBDEVELYASM", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-Yasm-1.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
