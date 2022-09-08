help([==[

Description
===========
GNU M4 is an implementation of the traditional Unix macro processor. It is mostly SVR4 compatible
  although it has some extensions (for example, handling more than 9 positional parameters to macros).
 GNU M4 also has built-in functions for including files, running shell commands, doing arithmetic, etc.


More information
================
 - Homepage: https://www.gnu.org/software/m4/m4.html
]==])

whatis([==[Description: GNU M4 is an implementation of the traditional Unix macro processor. It is mostly SVR4 compatible
  although it has some extensions (for example, handling more than 9 positional parameters to macros).
 GNU M4 also has built-in functions for including files, running shell commands, doing arithmetic, etc.]==])
whatis([==[Homepage: https://www.gnu.org/software/m4/m4.html]==])
whatis([==[URL: https://www.gnu.org/software/m4/m4.html]==])

local root = "/home/software/EasyBuild/software/M4/1.4.18-GCCcore-10.2.0"

conflict("M4")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTM4", root)
setenv("EBVERSIONM4", "1.4.18")
setenv("EBDEVELM4", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-M4-1.4.18-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
