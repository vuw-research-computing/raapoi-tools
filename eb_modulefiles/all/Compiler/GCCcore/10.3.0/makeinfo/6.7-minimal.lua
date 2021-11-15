help([==[

Description
===========
makeinfo is part of the Texinfo project, the official documentation format of the GNU project.

This is a minimal build with very basic functionality. Should only be used for build dependencies.


More information
================
 - Homepage: https://www.gnu.org/software/texinfo/
]==])

whatis([==[Description: makeinfo is part of the Texinfo project, the official documentation format of the GNU project.

This is a minimal build with very basic functionality. Should only be used for build dependencies.
]==])
whatis([==[Homepage: https://www.gnu.org/software/texinfo/]==])
whatis([==[URL: https://www.gnu.org/software/texinfo/]==])

local root = "/home/software/EasyBuild/software/makeinfo/6.7-GCCcore-10.3.0-minimal"

conflict("makeinfo")

if not ( isloaded("Perl/5.32.1-minimal") ) then
    load("Perl/5.32.1-minimal")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMAKEINFO", root)
setenv("EBVERSIONMAKEINFO", "6.7")
setenv("EBDEVELMAKEINFO", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-makeinfo-6.7-minimal-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
