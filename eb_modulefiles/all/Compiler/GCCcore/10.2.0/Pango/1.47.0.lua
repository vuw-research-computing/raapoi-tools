help([==[

Description
===========
Pango is a library for laying out and rendering of text, with an emphasis on internationalization.
Pango can be used anywhere that text layout is needed, though most of the work on Pango so far has been done in the
context of the GTK+ widget toolkit. Pango forms the core of text and font handling for GTK+-2.x.


More information
================
 - Homepage: https://www.pango.org/
]==])

whatis([==[Description: Pango is a library for laying out and rendering of text, with an emphasis on internationalization.
Pango can be used anywhere that text layout is needed, though most of the work on Pango so far has been done in the
context of the GTK+ widget toolkit. Pango forms the core of text and font handling for GTK+-2.x.]==])
whatis([==[Homepage: https://www.pango.org/]==])
whatis([==[URL: https://www.pango.org/]==])

local root = "/home/software/EasyBuild/software/Pango/1.47.0-GCCcore-10.2.0"

conflict("Pango")

if not ( isloaded("X11/20201008") ) then
    load("X11/20201008")
end

if not ( isloaded("GLib/2.66.1") ) then
    load("GLib/2.66.1")
end

if not ( isloaded("cairo/1.16.0") ) then
    load("cairo/1.16.0")
end

if not ( isloaded("HarfBuzz/2.6.7") ) then
    load("HarfBuzz/2.6.7")
end

if not ( isloaded("FriBidi/1.0.10") ) then
    load("FriBidi/1.0.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPANGO", root)
setenv("EBVERSIONPANGO", "1.47.0")
setenv("EBDEVELPANGO", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Pango-1.47.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.5.dev0
