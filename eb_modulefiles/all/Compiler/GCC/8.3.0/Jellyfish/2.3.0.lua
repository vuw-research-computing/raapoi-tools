help([==[

Description
===========
Jellyfish is a tool for fast, memory-efficient counting of k-mers in DNA.


More information
================
 - Homepage: http://www.genome.umd.edu/jellyfish.html
]==])

whatis([==[Description: Jellyfish is a tool for fast, memory-efficient counting of k-mers in DNA.]==])
whatis([==[Homepage: http://www.genome.umd.edu/jellyfish.html]==])
whatis([==[URL: http://www.genome.umd.edu/jellyfish.html]==])

local root = "/home/software/EasyBuild/software/Jellyfish/2.3.0-GCC-8.3.0"

conflict("Jellyfish")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJELLYFISH", root)
setenv("EBVERSIONJELLYFISH", "2.3.0")
setenv("EBDEVELJELLYFISH", pathJoin(root, "easybuild/Compiler-GCC-8.3.0-Jellyfish-2.3.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/jellyfish-2.3.0"))
-- Built with EasyBuild version 4.4.1
