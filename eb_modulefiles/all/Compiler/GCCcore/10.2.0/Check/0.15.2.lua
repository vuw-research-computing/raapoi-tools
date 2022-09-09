help([==[

Description
===========
Check is a unit testing framework for C. It features a simple interface for
defining unit tests, putting little in the way of the developer. Tests are
run in a separate address space, so both assertion failures and code errors
that cause segmentation faults or other signals can be caught. Test results
are reportable in the following: Subunit, TAP, XML, and a generic logging
format.


More information
================
 - Homepage: https://libcheck.github.io/check/
]==])

whatis([==[Description: 
Check is a unit testing framework for C. It features a simple interface for
defining unit tests, putting little in the way of the developer. Tests are
run in a separate address space, so both assertion failures and code errors
that cause segmentation faults or other signals can be caught. Test results
are reportable in the following: Subunit, TAP, XML, and a generic logging
format.]==])
whatis([==[Homepage: https://libcheck.github.io/check/]==])
whatis([==[URL: https://libcheck.github.io/check/]==])

local root = "/home/software/EasyBuild/software/Check/0.15.2-GCCcore-10.2.0"

conflict("Check")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCHECK", root)
setenv("EBVERSIONCHECK", "0.15.2")
setenv("EBDEVELCHECK", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Check-0.15.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
