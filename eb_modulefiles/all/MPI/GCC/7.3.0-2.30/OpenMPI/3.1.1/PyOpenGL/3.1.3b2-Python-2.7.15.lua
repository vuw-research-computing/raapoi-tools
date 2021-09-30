help([==[

Description
===========
PyOpenGL is the most common cross platform Python binding to OpenGL and related APIs.


More information
================
 - Homepage: http://pyopengl.sourceforge.net
]==])

whatis([==[Description: PyOpenGL is the most common cross platform Python binding to OpenGL and related APIs.]==])
whatis([==[Homepage: http://pyopengl.sourceforge.net]==])
whatis([==[URL: http://pyopengl.sourceforge.net]==])

local root = "/home/software/EasyBuild/software/PyOpenGL/3.1.3b2-foss-2018b-Python-2.7.15"

conflict("PyOpenGL")

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

if not ( isloaded("Mesa/18.1.1") ) then
    load("Mesa/18.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYOPENGL", root)
setenv("EBVERSIONPYOPENGL", "3.1.3b2")
setenv("EBDEVELPYOPENGL", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-PyOpenGL-3.1.3b2-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.4.1
