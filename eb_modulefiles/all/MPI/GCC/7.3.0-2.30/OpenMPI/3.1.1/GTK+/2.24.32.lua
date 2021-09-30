help([==[

Description
===========
The GTK+ 2 package contains libraries used for creating graphical user interfaces for applications.


More information
================
 - Homepage: https://developer.gnome.org/gtk+/stable/
]==])

whatis([==[Description: 
 The GTK+ 2 package contains libraries used for creating graphical user interfaces for applications.
]==])
whatis([==[Homepage: https://developer.gnome.org/gtk+/stable/]==])
whatis([==[URL: https://developer.gnome.org/gtk+/stable/]==])

local root = "/home/software/EasyBuild/software/GTK+/2.24.32-foss-2018b"

conflict("GTK+")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("ATK/2.28.1") ) then
    load("ATK/2.28.1")
end

if not ( isloaded("Gdk-Pixbuf/2.36.12") ) then
    load("Gdk-Pixbuf/2.36.12")
end

if not ( isloaded("Pango/1.42.4") ) then
    load("Pango/1.42.4")
end

if not ( isloaded("FriBidi/1.0.5") ) then
    load("FriBidi/1.0.5")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGTKPLUS", root)
setenv("EBVERSIONGTKPLUS", "2.24.32")
setenv("EBDEVELGTKPLUS", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-GTK+-2.24.32-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
