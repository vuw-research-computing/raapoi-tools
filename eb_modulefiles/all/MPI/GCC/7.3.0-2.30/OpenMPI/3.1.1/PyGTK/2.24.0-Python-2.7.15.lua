help([==[

Description
===========
PyGTK lets you to easily create programs with a graphical user interface
 using the Python programming language.


More information
================
 - Homepage: http://www.pygtk.org/
]==])

whatis([==[Description: PyGTK lets you to easily create programs with a graphical user interface
 using the Python programming language.]==])
whatis([==[Homepage: http://www.pygtk.org/]==])
whatis([==[URL: http://www.pygtk.org/]==])

local root = "/home/software/EasyBuild/software/PyGTK/2.24.0-foss-2018b-Python-2.7.15"

conflict("PyGTK")

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

if not ( isloaded("PyGObject/2.28.7-Python-2.7.15") ) then
    load("PyGObject/2.28.7-Python-2.7.15")
end

if not ( isloaded("GTK+/2.24.32") ) then
    load("GTK+/2.24.32")
end

if not ( isloaded("ATK/2.28.1") ) then
    load("ATK/2.28.1")
end

if not ( isloaded("PyCairo/1.18.0-Python-2.7.15") ) then
    load("PyCairo/1.18.0-Python-2.7.15")
end

if not ( isloaded("libglade/2.6.4") ) then
    load("libglade/2.6.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYGTK", root)
setenv("EBVERSIONPYGTK", "2.24.0")
setenv("EBDEVELPYGTK", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-PyGTK-2.24.0-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib64/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages/gtk-2.0"))
prepend_path("PYTHONPATH", pathJoin(root, "lib64/python2.7/site-packages/gtk-2.0"))
-- Built with EasyBuild version 4.4.1
