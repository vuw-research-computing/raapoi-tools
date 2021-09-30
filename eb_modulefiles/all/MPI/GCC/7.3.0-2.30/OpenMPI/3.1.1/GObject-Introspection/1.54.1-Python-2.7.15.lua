help([==[

Description
===========
GObject introspection is a middleware layer between C
 libraries (using GObject) and language bindings. The C library can be scanned
 at compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.


More information
================
 - Homepage: https://wiki.gnome.org/GObjectIntrospection/
]==])

whatis([==[Description: GObject introspection is a middleware layer between C
 libraries (using GObject) and language bindings. The C library can be scanned
 at compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.]==])
whatis([==[Homepage: https://wiki.gnome.org/GObjectIntrospection/]==])
whatis([==[URL: https://wiki.gnome.org/GObjectIntrospection/]==])

local root = "/home/software/EasyBuild/software/GObject-Introspection/1.54.1-foss-2018b-Python-2.7.15"

conflict("GObject-Introspection")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("Python/2.7.15") ) then
    load("Python/2.7.15")
end

if not ( isloaded("util-linux/2.32") ) then
    load("util-linux/2.32")
end

if not ( isloaded("GLib/2.54.3") ) then
    load("GLib/2.54.3")
end

if not ( isloaded("libffi/3.2.1") ) then
    load("libffi/3.2.1")
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
setenv("EBVERSIONGOBJECTMININTROSPECTION", "1.54.1")
setenv("EBDEVELGOBJECTMININTROSPECTION", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-GObject-Introspection-1.54.1-Python-2.7.15-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
