help([==[

Description
===========
Libglade is a library for constructing user interfaces dynamically from XML descriptions.


More information
================
 - Homepage: https://developer.gnome.org/libglade/
]==])

whatis([==[Description: Libglade is a library for constructing user interfaces dynamically from XML descriptions.]==])
whatis([==[Homepage: https://developer.gnome.org/libglade/]==])
whatis([==[URL: https://developer.gnome.org/libglade/]==])

local root = "/home/software/EasyBuild/software/libglade/2.6.4-foss-2018b"

conflict("libglade")

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

if not ( isloaded("GTK+/2.24.32") ) then
    load("GTK+/2.24.32")
end

if not ( isloaded("GLib/2.54.3") ) then
    load("GLib/2.54.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBGLADE", root)
setenv("EBVERSIONLIBGLADE", "2.6.4")
setenv("EBDEVELLIBGLADE", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-libglade-2.6.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
