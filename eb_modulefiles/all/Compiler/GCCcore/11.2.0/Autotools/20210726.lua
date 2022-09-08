help([==[

Description
===========
This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool


More information
================
 - Homepage: https://autotools.io
]==])

whatis([==[Description: 
 This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool
]==])
whatis([==[Homepage: https://autotools.io]==])
whatis([==[URL: https://autotools.io]==])

local root = "/home/software/EasyBuild/software/Autotools/20210726-GCCcore-11.2.0"

conflict("Autotools")

if not ( isloaded("Autoconf/2.71") ) then
    load("Autoconf/2.71")
end

if not ( isloaded("Automake/1.16.4") ) then
    load("Automake/1.16.4")
end

if not ( isloaded("libtool/2.4.6") ) then
    load("libtool/2.4.6")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20210726")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Autotools-20210726-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
