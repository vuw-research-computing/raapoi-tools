help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/home/software/EasyBuild/software/gompi/2018b"

conflict("gompi")

if not ( isloaded("GCC/7.3.0-2.30") ) then
    load("GCC/7.3.0-2.30")
end

if not ( isloaded("OpenMPI/3.1.1") ) then
    load("OpenMPI/3.1.1")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2018b")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/Core-gompi-2018b-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
