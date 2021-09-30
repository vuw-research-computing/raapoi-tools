help([==[

Description
===========
Libxml2 is the XML C parser and toolchain developed for the Gnome project
 (but usable outside of the Gnome platform). This is the Python binding.


More information
================
 - Homepage: http://xmlsoft.org/
]==])

whatis([==[Description: 
 Libxml2 is the XML C parser and toolchain developed for the Gnome project
 (but usable outside of the Gnome platform). This is the Python binding.]==])
whatis([==[Homepage: http://xmlsoft.org/]==])
whatis([==[URL: http://xmlsoft.org/]==])

local root = "/home/software/EasyBuild/software/libxml2-python/2.9.8-foss-2018b-Python-2.7.15"

conflict("libxml2-python")

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

if not ( isloaded("libiconv/1.15") ) then
    load("libiconv/1.15")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTLIBXML2MINPYTHON", root)
setenv("EBVERSIONLIBXML2MINPYTHON", "2.9.8")
setenv("EBDEVELLIBXML2MINPYTHON", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-libxml2-python-2.9.8-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.4.1
