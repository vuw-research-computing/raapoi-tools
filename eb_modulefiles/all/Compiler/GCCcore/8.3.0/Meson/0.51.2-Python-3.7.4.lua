help([==[

Description
===========
Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.


More information
================
 - Homepage: https://mesonbuild.com
]==])

whatis([==[Description: Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.]==])
whatis([==[Homepage: https://mesonbuild.com]==])
whatis([==[URL: https://mesonbuild.com]==])

local root = "/home/software/EasyBuild/software/Meson/0.51.2-GCCcore-8.3.0-Python-3.7.4"

conflict("Meson")

if not ( isloaded("Python/3.7.4") ) then
    load("Python/3.7.4")
end

if not ( isloaded("Ninja/1.9.0") ) then
    load("Ninja/1.9.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESON", root)
setenv("EBVERSIONMESON", "0.51.2")
setenv("EBDEVELMESON", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-Meson-0.51.2-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.4
