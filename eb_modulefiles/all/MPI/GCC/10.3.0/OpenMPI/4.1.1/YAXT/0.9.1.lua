help([==[

Description
===========
Yet Another eXchange Tool


More information
================
 - Homepage: https://www.dkrz.de/redmine/projects/yaxt
]==])

whatis([==[Description: Yet Another eXchange Tool]==])
whatis([==[Homepage: https://www.dkrz.de/redmine/projects/yaxt]==])
whatis([==[URL: https://www.dkrz.de/redmine/projects/yaxt]==])

local root = "/home/software/EasyBuild/software/YAXT/0.9.1-gompi-2021a"

conflict("YAXT")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTYAXT", root)
setenv("EBVERSIONYAXT", "0.9.1")
setenv("EBDEVELYAXT", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-YAXT-0.9.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
