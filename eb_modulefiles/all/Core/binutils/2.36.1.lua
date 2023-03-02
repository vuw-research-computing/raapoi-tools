help([==[

Description
===========
binutils: GNU binary utilities


More information
================
 - Homepage: https://directory.fsf.org/project/binutils/
]==])

whatis([==[Description: binutils: GNU binary utilities]==])
whatis([==[Homepage: https://directory.fsf.org/project/binutils/]==])
whatis([==[URL: https://directory.fsf.org/project/binutils/]==])

local root = "/home/software/EasyBuild/software/binutils/2.36.1"

conflict("binutils")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBINUTILS", root)
setenv("EBVERSIONBINUTILS", "2.36.1")
setenv("EBDEVELBINUTILS", pathJoin(root, "easybuild/Core-binutils-2.36.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
