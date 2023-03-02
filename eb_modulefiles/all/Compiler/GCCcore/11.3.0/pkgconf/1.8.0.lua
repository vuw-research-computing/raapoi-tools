help([==[

Description
===========
pkgconf is a program which helps to configure compiler and linker flags for development libraries.
 It is similar to pkg-config from freedesktop.org.


More information
================
 - Homepage: https://github.com/pkgconf/pkgconf
]==])

whatis([==[Description: pkgconf is a program which helps to configure compiler and linker flags for development libraries.
 It is similar to pkg-config from freedesktop.org.]==])
whatis([==[Homepage: https://github.com/pkgconf/pkgconf]==])
whatis([==[URL: https://github.com/pkgconf/pkgconf]==])

local root = "/home/software/EasyBuild/software/pkgconf/1.8.0-GCCcore-11.3.0"

conflict("pkgconf")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPKGCONF", root)
setenv("EBVERSIONPKGCONF", "1.8.0")
setenv("EBDEVELPKGCONF", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-pkgconf-1.8.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
