help([==[

Description
===========
The `time' command runs another program, then displays information about the resources used by that
 program, collected by the system while the program was running.


More information
================
 - Homepage: https://www.gnu.org/software/time/
]==])

whatis([==[Description: The `time' command runs another program, then displays information about the resources used by that
 program, collected by the system while the program was running.]==])
whatis([==[Homepage: https://www.gnu.org/software/time/]==])
whatis([==[URL: https://www.gnu.org/software/time/]==])

local root = "/home/software/EasyBuild/software/time/1.9-GCCcore-8.3.0"

conflict("time")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTIME", root)
setenv("EBVERSIONTIME", "1.9")
setenv("EBDEVELTIME", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-time-1.9-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
