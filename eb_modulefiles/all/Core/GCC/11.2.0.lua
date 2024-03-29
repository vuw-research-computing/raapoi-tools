help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).


More information
================
 - Homepage: https://gcc.gnu.org/
]==])

whatis([==[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).]==])
whatis([==[Homepage: https://gcc.gnu.org/]==])
whatis([==[URL: https://gcc.gnu.org/]==])

local root = "/home/software/EasyBuild/software/GCC/11.2.0"

conflict("GCC")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("binutils/2.37") ) then
    load("binutils/2.37")
end
prepend_path("MODULEPATH", "/home/software/tools/eb_modulefiles/all/Compiler/GCC/11.2.0")

setenv("EBROOTGCC", "/home/software/EasyBuild/software/GCCcore/11.2.0")
setenv("EBVERSIONGCC", "11.2.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/Core-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
