help([==[

Description
===========
intltool is a set of tools to centralize translation of
 many different file formats using GNU gettext-compatible PO files.


More information
================
 - Homepage: http://freedesktop.org/wiki/Software/intltool/
]==])

whatis([==[Description: intltool is a set of tools to centralize translation of
 many different file formats using GNU gettext-compatible PO files.]==])
whatis([==[Homepage: http://freedesktop.org/wiki/Software/intltool/]==])
whatis([==[URL: http://freedesktop.org/wiki/Software/intltool/]==])

local root = "/home/software/EasyBuild/software/intltool/0.51.0-GCCcore-8.3.0"

conflict("intltool")

if not ( isloaded("Perl/5.30.0") ) then
    load("Perl/5.30.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTINTLTOOL", root)
setenv("EBVERSIONINTLTOOL", "0.51.0")
setenv("EBDEVELINTLTOOL", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-intltool-0.51.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
