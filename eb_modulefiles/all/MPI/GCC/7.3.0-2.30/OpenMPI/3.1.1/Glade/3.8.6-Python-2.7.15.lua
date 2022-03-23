help([==[

Description
===========
Glade is a RAD tool to enable quick & easy development of user interfaces for the GTK+ toolkit
 and the GNOME desktop environment.


More information
================
 - Homepage: https://glade.gnome.org/
]==])

whatis([==[Description: Glade is a RAD tool to enable quick & easy development of user interfaces for the GTK+ toolkit
 and the GNOME desktop environment.]==])
whatis([==[Homepage: https://glade.gnome.org/]==])
whatis([==[URL: https://glade.gnome.org/]==])

local root = "/home/software/EasyBuild/software/Glade/3.8.6-foss-2018b-Python-2.7.15"

conflict("Glade")

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

if not ( isloaded("GTK+/2.24.32") ) then
    load("GTK+/2.24.32")
end

if not ( isloaded("PyGTK/2.24.0-Python-2.7.15") ) then
    load("PyGTK/2.24.0-Python-2.7.15")
end

if not ( isloaded("gettext/0.19.8.1") ) then
    load("gettext/0.19.8.1")
end

if not ( isloaded("ITSTool/2.0.5-Python-2.7.15") ) then
    load("ITSTool/2.0.5-Python-2.7.15")
end

if not ( isloaded("X11/20180604") ) then
    load("X11/20180604")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGLADE", root)
setenv("EBVERSIONGLADE", "3.8.6")
setenv("EBDEVELGLADE", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-Glade-3.8.6-Python-2.7.15-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
