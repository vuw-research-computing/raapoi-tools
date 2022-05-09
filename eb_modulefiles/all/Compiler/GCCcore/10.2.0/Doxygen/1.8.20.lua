help([==[

Description
===========
Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.


More information
================
 - Homepage: https://www.doxygen.org
]==])

whatis([==[Description: 
 Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.
]==])
whatis([==[Homepage: https://www.doxygen.org]==])
whatis([==[URL: https://www.doxygen.org]==])

local root = "/home/software/EasyBuild/software/Doxygen/1.8.20-GCCcore-10.2.0"

conflict("Doxygen")

if not ( isloaded("libiconv/1.16") ) then
    load("libiconv/1.16")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDOXYGEN", root)
setenv("EBVERSIONDOXYGEN", "1.8.20")
setenv("EBDEVELDOXYGEN", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Doxygen-1.8.20-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
