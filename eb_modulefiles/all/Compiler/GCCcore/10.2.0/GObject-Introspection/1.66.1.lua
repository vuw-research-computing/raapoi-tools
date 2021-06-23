help([==[

Description
===========
GObject introspection is a middleware layer between C libraries
 (using GObject) and language bindings. The C library can be scanned at
 compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.


More information
================
 - Homepage: https://gi.readthedocs.io/en/latest/
]==])

whatis([==[Description: GObject introspection is a middleware layer between C libraries
 (using GObject) and language bindings. The C library can be scanned at
 compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.]==])
whatis([==[Homepage: https://gi.readthedocs.io/en/latest/]==])
whatis([==[URL: https://gi.readthedocs.io/en/latest/]==])

local root = "/home/software/EasyBuild/software/GObject-Introspection/1.66.1-GCCcore-10.2.0"

conflict("GObject-Introspection")

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("GLib/2.66.1") ) then
    load("GLib/2.66.1")
end

if not ( isloaded("libffi/3.3") ) then
    load("libffi/3.3")
end

if not ( isloaded("util-linux/2.36") ) then
    load("util-linux/2.36")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGOBJECTMININTROSPECTION", root)
setenv("EBVERSIONGOBJECTMININTROSPECTION", "1.66.1")
setenv("EBDEVELGOBJECTMININTROSPECTION", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-GObject-Introspection-1.66.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.5.dev0
