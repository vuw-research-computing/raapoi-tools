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

local root = "/home/software/EasyBuild/software/gompi/2019b"

conflict("gompi")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("OpenMPI/3.1.4") ) then
    load("OpenMPI/3.1.4")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2019b")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/Core-gompi-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
