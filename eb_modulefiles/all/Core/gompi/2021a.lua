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

local root = "/home/software/EasyBuild/software/gompi/2021a"

conflict("gompi")

if not ( isloaded("GCC/10.3.0") ) then
    load("GCC/10.3.0")
end

if not ( isloaded("OpenMPI/4.1.1") ) then
    load("OpenMPI/4.1.1")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2021a")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/Core-gompi-2021a-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
