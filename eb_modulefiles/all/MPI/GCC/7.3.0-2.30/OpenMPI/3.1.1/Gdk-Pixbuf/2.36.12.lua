help([==[

Description
===========
The Gdk Pixbuf is a toolkit for image loading and pixel buffer manipulation.
 It is used by GTK+ 2 and GTK+ 3 to load and manipulate images. In the past it
 was distributed as part of GTK+ 2 but it was split off into a separate package
 in preparation for the change to GTK+ 3.


More information
================
 - Homepage: https://developer.gnome.org/gdk-pixbuf/stable/
]==])

whatis([==[Description: 
 The Gdk Pixbuf is a toolkit for image loading and pixel buffer manipulation.
 It is used by GTK+ 2 and GTK+ 3 to load and manipulate images. In the past it
 was distributed as part of GTK+ 2 but it was split off into a separate package
 in preparation for the change to GTK+ 3.
]==])
whatis([==[Homepage: https://developer.gnome.org/gdk-pixbuf/stable/]==])
whatis([==[URL: https://developer.gnome.org/gdk-pixbuf/stable/]==])

local root = "/home/software/EasyBuild/software/Gdk-Pixbuf/2.36.12-foss-2018b"

conflict("Gdk-Pixbuf")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("GLib/2.54.3") ) then
    load("GLib/2.54.3")
end

if not ( isloaded("libjpeg-turbo/2.0.0") ) then
    load("libjpeg-turbo/2.0.0")
end

if not ( isloaded("libpng/1.6.34") ) then
    load("libpng/1.6.34")
end

if not ( isloaded("LibTIFF/4.0.9") ) then
    load("LibTIFF/4.0.9")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDKMINPIXBUF", root)
setenv("EBVERSIONGDKMINPIXBUF", "2.36.12")
setenv("EBDEVELGDKMINPIXBUF", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-Gdk-Pixbuf-2.36.12-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
