help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, along with CUDA toolkit.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, along with CUDA toolkit.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/home/software/EasyBuild/software/gcccuda/2020b"

conflict("gcccuda")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("CUDA/11.1.1") ) then
    load("CUDA/11.1.1")
end

setenv("EBROOTGCCCUDA", root)
setenv("EBVERSIONGCCCUDA", "2020b")
setenv("EBDEVELGCCCUDA", pathJoin(root, "easybuild/Core-gcccuda-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
