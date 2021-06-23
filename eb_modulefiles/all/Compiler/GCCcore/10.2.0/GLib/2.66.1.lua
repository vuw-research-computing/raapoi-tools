help([==[

Description
===========
GLib is one of the base libraries of the GTK+ project


More information
================
 - Homepage: https://www.gtk.org/
]==])

whatis([==[Description: GLib is one of the base libraries of the GTK+ project]==])
whatis([==[Homepage: https://www.gtk.org/]==])
whatis([==[URL: https://www.gtk.org/]==])

local root = "/home/software/EasyBuild/software/GLib/2.66.1-GCCcore-10.2.0"

conflict("GLib")

if not ( isloaded("libffi/3.3") ) then
    load("libffi/3.3")
end

if not ( isloaded("gettext/0.21") ) then
    load("gettext/0.21")
end

if not ( isloaded("libxml2/2.9.10") ) then
    load("libxml2/2.9.10")
end

if not ( isloaded("PCRE/8.44") ) then
    load("PCRE/8.44")
end

if not ( isloaded("util-linux/2.36") ) then
    load("util-linux/2.36")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGLIB", root)
setenv("EBVERSIONGLIB", "2.66.1")
setenv("EBDEVELGLIB", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-GLib-2.66.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.5.dev0
