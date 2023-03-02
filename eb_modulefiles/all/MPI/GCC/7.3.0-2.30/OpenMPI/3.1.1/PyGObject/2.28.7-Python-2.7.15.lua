help([==[

Description
===========
Python Bindings for GLib/GObject/GIO/GTK+


More information
================
 - Homepage: http://www.pygtk.org/
]==])

whatis([==[Description: Python Bindings for GLib/GObject/GIO/GTK+]==])
whatis([==[Homepage: http://www.pygtk.org/]==])
whatis([==[URL: http://www.pygtk.org/]==])

local root = "/home/software/EasyBuild/software/PyGObject/2.28.7-foss-2018b-Python-2.7.15"

conflict("PyGObject")

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

if not ( isloaded("GLib/2.54.3") ) then
    load("GLib/2.54.3")
end

if not ( isloaded("GObject-Introspection/1.54.1-Python-2.7.15") ) then
    load("GObject-Introspection/1.54.1-Python-2.7.15")
end

if not ( isloaded("PyCairo/1.18.0-Python-2.7.15") ) then
    load("PyCairo/1.18.0-Python-2.7.15")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYGOBJECT", root)
setenv("EBVERSIONPYGOBJECT", "2.28.7")
setenv("EBDEVELPYGOBJECT", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-PyGObject-2.28.7-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages/gtk-2.0"))
prepend_path("PYTHONPATH", pathJoin(root, "lib64/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib64/python2.7/site-packages/gtk-2.0"))
-- Built with EasyBuild version 4.4.1
