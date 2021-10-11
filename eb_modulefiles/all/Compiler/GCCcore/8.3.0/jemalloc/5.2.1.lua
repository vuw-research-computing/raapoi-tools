help([==[

Description
===========
jemalloc is a general purpose malloc(3) implementation that emphasizes fragmentation avoidance and
 scalable concurrency support.


More information
================
 - Homepage: http://jemalloc.net
]==])

whatis([==[Description: jemalloc is a general purpose malloc(3) implementation that emphasizes fragmentation avoidance and
 scalable concurrency support.]==])
whatis([==[Homepage: http://jemalloc.net]==])
whatis([==[URL: http://jemalloc.net]==])

local root = "/home/software/EasyBuild/software/jemalloc/5.2.1-GCCcore-8.3.0"

conflict("jemalloc")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJEMALLOC", root)
setenv("EBVERSIONJEMALLOC", "5.2.1")
setenv("EBDEVELJEMALLOC", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-jemalloc-5.2.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
