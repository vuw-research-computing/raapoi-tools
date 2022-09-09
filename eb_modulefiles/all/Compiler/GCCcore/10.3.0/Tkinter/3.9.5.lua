help([==[

Description
===========
Tkinter module, built with the Python buildsystem


More information
================
 - Homepage: https://python.org/
]==])

whatis([==[Description: Tkinter module, built with the Python buildsystem]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/home/software/EasyBuild/software/Tkinter/3.9.5-GCCcore-10.3.0"

conflict("Tkinter")

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("Tk/8.6.11") ) then
    load("Tk/8.6.11")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTKINTER", root)
setenv("EBVERSIONTKINTER", "3.9.5")
setenv("EBDEVELTKINTER", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Tkinter-3.9.5-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
