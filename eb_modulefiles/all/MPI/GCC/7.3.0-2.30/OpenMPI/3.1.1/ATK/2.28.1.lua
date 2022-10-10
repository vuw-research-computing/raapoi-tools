help([==[

Description
===========
ATK provides the set of accessibility interfaces that are implemented by other
 toolkits and applications. Using the ATK interfaces, accessibility tools have
 full access to view and control running applications.


More information
================
 - Homepage: https://developer.gnome.org/ATK/stable/
]==])

whatis([==[Description: 
 ATK provides the set of accessibility interfaces that are implemented by other
 toolkits and applications. Using the ATK interfaces, accessibility tools have
 full access to view and control running applications.
]==])
whatis([==[Homepage: https://developer.gnome.org/ATK/stable/]==])
whatis([==[URL: https://developer.gnome.org/ATK/stable/]==])

local root = "/home/software/EasyBuild/software/ATK/2.28.1-foss-2018b"

conflict("ATK")

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

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTATK", root)
setenv("EBVERSIONATK", "2.28.1")
setenv("EBDEVELATK", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-ATK-2.28.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
