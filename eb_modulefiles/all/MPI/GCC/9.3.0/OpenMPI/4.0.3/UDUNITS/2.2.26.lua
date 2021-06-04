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

local root = "/home/software/EasyBuild/software/UDUNITS/2.2.26-foss-2020a"

conflict("UDUNITS")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

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
setenv("EBVERSIONUDUNITS", "2.2.26")
setenv("EBDEVELUDUNITS", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-UDUNITS-2.2.26-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
