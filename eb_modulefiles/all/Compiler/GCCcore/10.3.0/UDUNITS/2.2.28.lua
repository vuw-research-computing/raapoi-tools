help([==[

Description
===========
UDUNITS supports conversion of unit specifications between formatted and binary forms,
 arithmetic manipulation of units, and conversion of values between compatible scales of measurement.


More information
================
 - Homepage: https://www.unidata.ucar.edu/software/udunits/
]==])

whatis([==[Description: UDUNITS supports conversion of unit specifications between formatted and binary forms,
 arithmetic manipulation of units, and conversion of values between compatible scales of measurement.]==])
whatis([==[Homepage: https://www.unidata.ucar.edu/software/udunits/]==])
whatis([==[URL: https://www.unidata.ucar.edu/software/udunits/]==])

local root = "/home/software/EasyBuild/software/UDUNITS/2.2.28-GCCcore-10.3.0"

conflict("UDUNITS")

if not ( isloaded("expat/2.2.9") ) then
    load("expat/2.2.9")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTUDUNITS", root)
setenv("EBVERSIONUDUNITS", "2.2.28")
setenv("EBDEVELUDUNITS", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-UDUNITS-2.2.28-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
