help([==[

Description
===========
ACTC converts independent triangles into triangle strips or fans.


More information
================
 - Homepage: https://sourceforge.net/projects/actc
]==])

whatis([==[Description: ACTC converts independent triangles into triangle strips or fans.]==])
whatis([==[Homepage: https://sourceforge.net/projects/actc]==])
whatis([==[URL: https://sourceforge.net/projects/actc]==])

local root = "/home/software/EasyBuild/software/ACTC/1.1-GCCcore-10.2.0"

conflict("ACTC")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTACTC", root)
setenv("EBVERSIONACTC", "1.1")
setenv("EBDEVELACTC", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-ACTC-1.1-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/ac"))
-- Built with EasyBuild version 4.5.3
