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

local root = "/home/software/EasyBuild/software/gompi/2020b"

conflict("gompi")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("OpenMPI/4.0.5") ) then
    load("OpenMPI/4.0.5")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2020b")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/Core-gompi-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
