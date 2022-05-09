help([==[

Description
===========
VMD is a molecular visualization program for displaying, animating, and analyzing large biomolecular
 systems using 3-D graphics and built-in scripting.


More information
================
 - Homepage: https://www.ks.uiuc.edu/Research/vmd
]==])

whatis([==[Description: VMD is a molecular visualization program for displaying, animating, and analyzing large biomolecular
 systems using 3-D graphics and built-in scripting.]==])
whatis([==[Homepage: https://www.ks.uiuc.edu/Research/vmd]==])
whatis([==[URL: https://www.ks.uiuc.edu/Research/vmd]==])

local root = "/home/software/EasyBuild/software/VMD/1.9.4a51-foss-2020b"

conflict("VMD")

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Tcl/8.6.10") ) then
    load("Tcl/8.6.10")
end

if not ( isloaded("Tk/8.6.10") ) then
    load("Tk/8.6.10")
end

if not ( isloaded("FLTK/1.3.5") ) then
    load("FLTK/1.3.5")
end

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("SciPy-bundle/2020.11") ) then
    load("SciPy-bundle/2020.11")
end

if not ( isloaded("Tkinter/3.8.6") ) then
    load("Tkinter/3.8.6")
end

if not ( isloaded("Mesa/20.2.1") ) then
    load("Mesa/20.2.1")
end

if not ( isloaded("netCDF/4.7.4") ) then
    load("netCDF/4.7.4")
end

if not ( isloaded("FFmpeg/4.3.1") ) then
    load("FFmpeg/4.3.1")
end

if not ( isloaded("ImageMagick/7.0.10-35") ) then
    load("ImageMagick/7.0.10-35")
end

if not ( isloaded("ACTC/1.1") ) then
    load("ACTC/1.1")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("POV-Ray/3.7.0.8") ) then
    load("POV-Ray/3.7.0.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVMD", root)
setenv("EBVERSIONVMD", "1.9.4a51")
setenv("EBDEVELVMD", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-VMD-1.9.4a51-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
