help([==[

Description
===========
High performance read alignment, quantification and mutation discovery


More information
================
 - Homepage: http://subread.sourceforge.net/
]==])

whatis([==[Description: High performance read alignment, quantification and mutation discovery]==])
whatis([==[Homepage: http://subread.sourceforge.net/]==])
whatis([==[URL: http://subread.sourceforge.net/]==])

local root = "/home/software/EasyBuild/software/Subread/2.0.3-GCC-10.3.0"

conflict("Subread")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSUBREAD", root)
setenv("EBVERSIONSUBREAD", "2.0.3")
setenv("EBDEVELSUBREAD", pathJoin(root, "easybuild/Compiler-GCC-10.3.0-Subread-2.0.3-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
