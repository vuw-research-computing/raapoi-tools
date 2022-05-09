help([==[

Description
===========
The Persistence of Vision Raytracer, or POV-Ray, is a ray tracing program
 which generates images from a text-based scene description, and is available for a variety
 of computer platforms. POV-Ray is a high-quality, Free Software tool for creating stunning
 three-dimensional graphics. The source code is available for those wanting to do their own ports.


More information
================
 - Homepage: https://www.povray.org/
]==])

whatis([==[Description: The Persistence of Vision Raytracer, or POV-Ray, is a ray tracing program
 which generates images from a text-based scene description, and is available for a variety
 of computer platforms. POV-Ray is a high-quality, Free Software tool for creating stunning
 three-dimensional graphics. The source code is available for those wanting to do their own ports.]==])
whatis([==[Homepage: https://www.povray.org/]==])
whatis([==[URL: https://www.povray.org/]==])

local root = "/home/software/EasyBuild/software/POV-Ray/3.7.0.8-GCC-10.2.0"

conflict("POV-Ray")

if not ( isloaded("Boost/1.74.0") ) then
    load("Boost/1.74.0")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.5") ) then
    load("libjpeg-turbo/2.0.5")
end

if not ( isloaded("X11/20201008") ) then
    load("X11/20201008")
end

if not ( isloaded("LibTIFF/4.1.0") ) then
    load("LibTIFF/4.1.0")
end

if not ( isloaded("SDL2/2.0.14") ) then
    load("SDL2/2.0.14")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOVMINRAY", root)
setenv("EBVERSIONPOVMINRAY", "3.7.0.8")
setenv("EBDEVELPOVMINRAY", pathJoin(root, "easybuild/Compiler-GCC-10.2.0-POV-Ray-3.7.0.8-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
