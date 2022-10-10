help([==[

Description
===========
Autoconf is an extensible package of M4 macros that produce shell scripts
 to automatically configure software source code packages. These scripts can
 adapt the packages to many kinds of UNIX-like systems without manual user
 intervention. Autoconf creates a configuration script for a package from a
 template file that lists the operating system features that the package can
 use, in the form of M4 macro calls.


More information
================
 - Homepage: https://www.gnu.org/software/autoconf/
]==])

whatis([==[Description: 
 Autoconf is an extensible package of M4 macros that produce shell scripts
 to automatically configure software source code packages. These scripts can
 adapt the packages to many kinds of UNIX-like systems without manual user
 intervention. Autoconf creates a configuration script for a package from a
 template file that lists the operating system features that the package can
 use, in the form of M4 macro calls.
]==])
whatis([==[Homepage: https://www.gnu.org/software/autoconf/]==])
whatis([==[URL: https://www.gnu.org/software/autoconf/]==])

local root = "/home/software/EasyBuild/software/Autoconf/2.69-GCCcore-8.3.0"

conflict("Autoconf")

if not ( isloaded("M4/1.4.18") ) then
    load("M4/1.4.18")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTAUTOCONF", root)
setenv("EBVERSIONAUTOCONF", "2.69")
setenv("EBDEVELAUTOCONF", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-Autoconf-2.69-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
