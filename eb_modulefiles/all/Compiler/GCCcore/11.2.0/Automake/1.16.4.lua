help([==[

Description
===========
Automake: GNU Standards-compliant Makefile generator


More information
================
 - Homepage: https://www.gnu.org/software/automake/automake.html
]==])

whatis([==[Description: Automake: GNU Standards-compliant Makefile generator]==])
whatis([==[Homepage: https://www.gnu.org/software/automake/automake.html]==])
whatis([==[URL: https://www.gnu.org/software/automake/automake.html]==])

local root = "/home/software/EasyBuild/software/Automake/1.16.4-GCCcore-11.2.0"

conflict("Automake")

if not ( isloaded("Autoconf/2.71") ) then
    load("Autoconf/2.71")
end

if not ( isloaded("Perl/5.34.0") ) then
    load("Perl/5.34.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTAUTOMAKE", root)
setenv("EBVERSIONAUTOMAKE", "1.16.4")
setenv("EBDEVELAUTOMAKE", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Automake-1.16.4-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
