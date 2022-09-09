help([==[

Description
===========
NLopt is a free/open-source library for nonlinear optimization,
 providing a common interface for a number of different free optimization routines
 available online as well as original implementations of various other algorithms.


More information
================
 - Homepage: http://ab-initio.mit.edu/wiki/index.php/NLopt
]==])

whatis([==[Description:  NLopt is a free/open-source library for nonlinear optimization,
 providing a common interface for a number of different free optimization routines
 available online as well as original implementations of various other algorithms. ]==])
whatis([==[Homepage: http://ab-initio.mit.edu/wiki/index.php/NLopt]==])
whatis([==[URL: http://ab-initio.mit.edu/wiki/index.php/NLopt]==])

local root = "/home/software/EasyBuild/software/NLopt/2.6.1-GCCcore-9.3.0"

conflict("NLopt")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNLOPT", root)
setenv("EBVERSIONNLOPT", "2.6.1")
setenv("EBDEVELNLOPT", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-NLopt-2.6.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
