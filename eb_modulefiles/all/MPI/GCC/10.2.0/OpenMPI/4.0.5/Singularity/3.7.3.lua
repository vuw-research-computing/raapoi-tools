help([==[

Description
===========
Singularity is a portable application stack packaging and runtime utility


More information
================
 - Homepage: https://github.com/hpcng/singularity
]==])

whatis([==[Description: Singularity is a portable application stack packaging and runtime utility.]==])
whatis([==[Homepage: https://github.com/hpcng/singularity]==])
whatis([==[URL: https://github.com/hpcng/singularity/]==])

local root = "/home/software/EasyBuild/software/Singularity/3.7.3-gompi-2020b"

conflict("Singularity")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("OpenMPI/4.0.5") ) then
    load("OpenMPI/4.0.5")
end

if not ( isloaded("Go/1.14.1") ) then
    load("Go/1.14.1")
end


prepend_path("PATH", pathJoin(root, "bin"))
