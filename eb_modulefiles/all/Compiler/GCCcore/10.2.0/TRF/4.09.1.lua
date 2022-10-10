help([==[

Description
===========
Tandem Repeats Finder: a program to analyze DNA sequences.


More information
================
 - Homepage: https://tandem.bu.edu/trf/trf.html
]==])

whatis([==[Description: Tandem Repeats Finder: a program to analyze DNA sequences.]==])
whatis([==[Homepage: https://tandem.bu.edu/trf/trf.html]==])
whatis([==[URL: https://tandem.bu.edu/trf/trf.html]==])

local root = "/home/software/EasyBuild/software/TRF/4.09.1-GCCcore-10.2.0"

conflict("TRF")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTRF", root)
setenv("EBVERSIONTRF", "4.09.1")
setenv("EBDEVELTRF", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-TRF-4.09.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
