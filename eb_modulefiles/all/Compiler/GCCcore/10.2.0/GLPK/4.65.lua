help([==[

Description
===========
The GLPK (GNU Linear Programming Kit) package is intended for
 solving large-scale linear programming (LP),
 mixed integer programming (MIP), and other related problems.
 It is a set of routines written in ANSI C 
 and organized in the form of a callable library.


More information
================
 - Homepage: https://www.gnu.org/software/glpk/
]==])

whatis([==[Description: The GLPK (GNU Linear Programming Kit) package is intended for
 solving large-scale linear programming (LP),
 mixed integer programming (MIP), and other related problems.
 It is a set of routines written in ANSI C 
 and organized in the form of a callable library.]==])
whatis([==[Homepage: https://www.gnu.org/software/glpk/]==])
whatis([==[URL: https://www.gnu.org/software/glpk/]==])

local root = "/home/software/EasyBuild/software/GLPK/4.65-GCCcore-10.2.0"

conflict("GLPK")

if not ( isloaded("GMP/6.2.0") ) then
    load("GMP/6.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGLPK", root)
setenv("EBVERSIONGLPK", "4.65")
setenv("EBDEVELGLPK", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-GLPK-4.65-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
