help([==[

Description
===========
matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.


More information
================
 - Homepage: https://matplotlib.org


Included extensions
===================
Cycler-0.10.0, kiwisolver-1.3.1, matplotlib-3.4.2
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.10.0, kiwisolver-1.3.1, matplotlib-3.4.2]==])

local root = "/home/software/EasyBuild/software/matplotlib/3.4.2-foss-2021a"

conflict("matplotlib")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("SciPy-bundle/2021.05") ) then
    load("SciPy-bundle/2021.05")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("freetype/2.10.4") ) then
    load("freetype/2.10.4")
end

if not ( isloaded("Tkinter/3.9.5") ) then
    load("Tkinter/3.9.5")
end

if not ( isloaded("Pillow/8.2.0") ) then
    load("Pillow/8.2.0")
end

if not ( isloaded("Qhull/2020.2") ) then
    load("Qhull/2020.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.4.2")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-matplotlib-3.4.2-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.10.0,kiwisolver-1.3.1,matplotlib-3.4.2")
