help([==[

Description
===========
Berkeley DB enables the development of custom data management
 solutions, without the overhead traditionally associated with such custom
 projects.


More information
================
 - Homepage: https://www.oracle.com/technetwork/products/berkeleydb
]==])

whatis([==[Description: Berkeley DB enables the development of custom data management
 solutions, without the overhead traditionally associated with such custom
 projects.]==])
whatis([==[Homepage: https://www.oracle.com/technetwork/products/berkeleydb]==])
whatis([==[URL: https://www.oracle.com/technetwork/products/berkeleydb]==])

local root = "/home/software/EasyBuild/software/DB/18.1.40-GCCcore-10.2.0"

conflict("DB")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDB", root)
setenv("EBVERSIONDB", "18.1.40")
setenv("EBDEVELDB", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-DB-18.1.40-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
