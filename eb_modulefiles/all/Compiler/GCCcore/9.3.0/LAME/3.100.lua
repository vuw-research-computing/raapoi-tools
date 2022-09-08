help([==[

Description
===========
LAME is a high quality MPEG Audio Layer III (MP3) encoder licensed under the LGPL.


More information
================
 - Homepage: http://lame.sourceforge.net/
]==])

whatis([==[Description: LAME is a high quality MPEG Audio Layer III (MP3) encoder licensed under the LGPL.]==])
whatis([==[Homepage: http://lame.sourceforge.net/]==])
whatis([==[URL: http://lame.sourceforge.net/]==])

local root = "/home/software/EasyBuild/software/LAME/3.100-GCCcore-9.3.0"

conflict("LAME")

if not ( isloaded("ncurses/6.2") ) then
    load("ncurses/6.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLAME", root)
setenv("EBVERSIONLAME", "3.100")
setenv("EBDEVELLAME", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-LAME-3.100-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
