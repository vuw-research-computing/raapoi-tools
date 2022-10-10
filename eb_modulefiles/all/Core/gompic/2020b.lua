help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain along with CUDA toolkit,
 including OpenMPI for MPI support with CUDA features enabled.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain along with CUDA toolkit,
 including OpenMPI for MPI support with CUDA features enabled.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/home/software/EasyBuild/software/gompic/2020b"

conflict("gompic")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("CUDA/11.1.1") ) then
    load("CUDA/11.1.1")
end

if not ( isloaded("OpenMPI/4.0.5") ) then
    load("OpenMPI/4.0.5")
end

setenv("EBROOTGOMPIC", root)
setenv("EBVERSIONGOMPIC", "2020b")
setenv("EBDEVELGOMPIC", pathJoin(root, "easybuild/Core-gompic-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
