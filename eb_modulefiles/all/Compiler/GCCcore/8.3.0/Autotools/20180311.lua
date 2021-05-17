help([==[

Description
===========
This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool


More information
================
 - Homepage: http://autotools.io
]==])

whatis([==[Description: 
 This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool
]==])
whatis([==[Homepage: http://autotools.io]==])
whatis([==[URL: http://autotools.io]==])

local root = "/home/software/EasyBuild/software/Autotools/20180311-GCCcore-8.3.0"

conflict("Autotools")

if not ( isloaded("Autoconf/2.69") ) then
    load("Autoconf/2.69")
end

if not ( isloaded("Automake/1.16.1") ) then
    load("Automake/1.16.1")
end

if not ( isloaded("libtool/2.4.6") ) then
    load("libtool/2.4.6")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20180311")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-Autotools-20180311-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
