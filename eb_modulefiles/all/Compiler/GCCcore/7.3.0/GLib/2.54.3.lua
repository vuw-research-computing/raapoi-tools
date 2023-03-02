help([==[

Description
===========
GLib is one of the base libraries of the GTK+ project


More information
================
 - Homepage: http://www.gtk.org/
]==])

whatis([==[Description: GLib is one of the base libraries of the GTK+ project]==])
whatis([==[Homepage: http://www.gtk.org/]==])
whatis([==[URL: http://www.gtk.org/]==])

local root = "/home/software/EasyBuild/software/GLib/2.54.3-GCCcore-7.3.0"

conflict("GLib")

if not ( isloaded("libffi/3.2.1") ) then
    load("libffi/3.2.1")
end

if not ( isloaded("gettext/0.19.8.1") ) then
    load("gettext/0.19.8.1")
end

if not ( isloaded("libxml2/2.9.8") ) then
    load("libxml2/2.9.8")
end

if not ( isloaded("PCRE/8.41") ) then
    load("PCRE/8.41")
end

if not ( isloaded("util-linux/2.32") ) then
    load("util-linux/2.32")
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
setenv("EBVERSIONGLIB", "2.54.3")
setenv("EBDEVELGLIB", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-GLib-2.54.3-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
