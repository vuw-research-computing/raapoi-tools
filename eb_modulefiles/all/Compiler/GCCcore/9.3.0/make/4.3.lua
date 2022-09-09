help([==[

Description
===========
GNU version of make utility


More information
================
 - Homepage: https://www.gnu.org/software/make/make.html
]==])

whatis([==[Description: GNU version of make utility]==])
whatis([==[Homepage: https://www.gnu.org/software/make/make.html]==])
whatis([==[URL: https://www.gnu.org/software/make/make.html]==])

local root = "/home/software/EasyBuild/software/make/4.3-GCCcore-9.3.0"

conflict("make")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMAKE", root)
setenv("EBVERSIONMAKE", "4.3")
setenv("EBDEVELMAKE", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-make-4.3-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
