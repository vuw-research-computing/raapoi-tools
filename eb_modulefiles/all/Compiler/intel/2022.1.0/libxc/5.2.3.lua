help([==[

Description
===========
Libxc is a library of exchange-correlation functionals for density-functional theory.
 The aim is to provide a portable, well tested and reliable set of exchange and correlation functionals.


More information
================
 - Homepage: https://www.tddft.org/programs/libxc
]==])

whatis([==[Description: Libxc is a library of exchange-correlation functionals for density-functional theory.
 The aim is to provide a portable, well tested and reliable set of exchange and correlation functionals.]==])
whatis([==[Homepage: https://www.tddft.org/programs/libxc]==])
whatis([==[URL: https://www.tddft.org/programs/libxc]==])

local root = "/home/software/EasyBuild/software/libxc/5.2.3-intel-compilers-2022.1.0"

conflict("libxc")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBXC", root)
setenv("EBVERSIONLIBXC", "5.2.3")
setenv("EBDEVELLIBXC", pathJoin(root, "easybuild/Compiler-intel-2022.1.0-libxc-5.2.3-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
