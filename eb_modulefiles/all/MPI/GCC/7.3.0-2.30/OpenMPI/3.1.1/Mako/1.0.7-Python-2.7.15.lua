help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: https://www.makotemplates.org


Included extensions
===================
Mako-1.0.7, MarkupSafe-1.1.1
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: https://www.makotemplates.org]==])
whatis([==[URL: https://www.makotemplates.org]==])
whatis([==[Extensions: Mako-1.0.7, MarkupSafe-1.1.1]==])

local root = "/home/software/EasyBuild/software/Mako/1.0.7-foss-2018b-Python-2.7.15"

conflict("Mako")

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

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.0.7")
setenv("EBDEVELMAKO", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-Mako-1.0.7-Python-2.7.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.4.1
setenv("EBEXTSLISTMAKO", "MarkupSafe-1.1.1,Mako-1.0.7")
