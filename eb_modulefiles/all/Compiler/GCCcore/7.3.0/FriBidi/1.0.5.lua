help([==[

Description
===========
The Free Implementation of the Unicode Bidirectional Algorithm.


More information
================
 - Homepage: https://github.com/fribidi/fribidi
]==])

whatis([==[Description: 
 The Free Implementation of the Unicode Bidirectional Algorithm.
]==])
whatis([==[Homepage: https://github.com/fribidi/fribidi]==])
whatis([==[URL: https://github.com/fribidi/fribidi]==])

local root = "/home/software/EasyBuild/software/FriBidi/1.0.5-GCCcore-7.3.0"

conflict("FriBidi")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFRIBIDI", root)
setenv("EBVERSIONFRIBIDI", "1.0.5")
setenv("EBDEVELFRIBIDI", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-FriBidi-1.0.5-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
