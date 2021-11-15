help([==[

Description
===========
pkg-config is a helper tool used when compiling applications and libraries.
 It helps you insert the correct compiler options on the command line so an
 application can use gcc -o test test.c `pkg-config --libs --cflags glib-2.0`
 for instance, rather than hard-coding values on where to find glib (or other
 libraries).


More information
================
 - Homepage: http://www.freedesktop.org/wiki/Software/pkg-config/
]==])

whatis([==[Description: 
 pkg-config is a helper tool used when compiling applications and libraries.
 It helps you insert the correct compiler options on the command line so an
 application can use gcc -o test test.c `pkg-config --libs --cflags glib-2.0`
 for instance, rather than hard-coding values on where to find glib (or other
 libraries).
]==])
whatis([==[Homepage: http://www.freedesktop.org/wiki/Software/pkg-config/]==])
whatis([==[URL: http://www.freedesktop.org/wiki/Software/pkg-config/]==])

local root = "/home/software/EasyBuild/software/pkg-config/0.29.2"

conflict("pkg-config")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPKGMINCONFIG", root)
setenv("EBVERSIONPKGMINCONFIG", "0.29.2")
setenv("EBDEVELPKGMINCONFIG", pathJoin(root, "easybuild/Core-pkg-config-0.29.2-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
