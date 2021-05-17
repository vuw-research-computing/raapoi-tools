help([==[

Description
===========
Tcsh is an enhanced, but completely compatible version of the Berkeley UNIX C shell (csh).
 It is a command language interpreter usable both as an interactive login shell and a shell script command
 processor. It includes a command-line editor, programmable word completion, spelling correction, a history
 mechanism, job control and a C-like syntax.


More information
================
 - Homepage: https://www.tcsh.org
]==])

whatis([==[Description: Tcsh is an enhanced, but completely compatible version of the Berkeley UNIX C shell (csh).
 It is a command language interpreter usable both as an interactive login shell and a shell script command
 processor. It includes a command-line editor, programmable word completion, spelling correction, a history
 mechanism, job control and a C-like syntax.]==])
whatis([==[Homepage: https://www.tcsh.org]==])
whatis([==[URL: https://www.tcsh.org]==])

local root = "/home/software/EasyBuild/software/tcsh/6.22.02-GCCcore-8.3.0"

conflict("tcsh")

if not ( isloaded("ncurses/6.1") ) then
    load("ncurses/6.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTCSH", root)
setenv("EBVERSIONTCSH", "6.22.02")
setenv("EBDEVELTCSH", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-tcsh-6.22.02-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
