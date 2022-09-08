help([==[

Description
===========
Zsh is a shell designed for interactive use, although it is also a powerful scripting language.


More information
================
 - Homepage: https://www.zsh.org/
]==])

whatis([==[Description: Zsh is a shell designed for interactive use, although it is also a powerful scripting language.]==])
whatis([==[Homepage: https://www.zsh.org/]==])
whatis([==[URL: https://www.zsh.org/]==])

local root = "/home/software/EasyBuild/software/zsh/5.8"

conflict("zsh")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTZSH", root)
setenv("EBVERSIONZSH", "5.8")
setenv("EBDEVELZSH", pathJoin(root, "easybuild/Core-zsh-5.8-easybuild-devel"))

prepend_path("FPATH", pathJoin(root, "share/zsh/5.8/functions"))
-- Built with EasyBuild version 4.3.4
