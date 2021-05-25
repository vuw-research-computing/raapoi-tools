help([==[

Description
===========
Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.


More information
================
 - Homepage: https://github.com/uploadcare/pillow-simd
]==])

whatis([==[Description: Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.]==])
whatis([==[Homepage: https://github.com/uploadcare/pillow-simd]==])
whatis([==[URL: https://github.com/uploadcare/pillow-simd]==])

local root = "/home/software/EasyBuild/software/Pillow-SIMD/7.1.2-GCCcore-10.2.0"

conflict("Pillow-SIMD")

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("libjpeg-turbo/2.0.5") ) then
    load("libjpeg-turbo/2.0.5")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("LibTIFF/4.1.0") ) then
    load("LibTIFF/4.1.0")
end

if not ( isloaded("freetype/2.10.3") ) then
    load("freetype/2.10.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPILLOWMINSIMD", root)
setenv("EBVERSIONPILLOWMINSIMD", "7.1.2")
setenv("EBDEVELPILLOWMINSIMD", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Pillow-SIMD-7.1.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
