help([==[

Description
===========
COMSOL Multiphysics is a cross-platform finite element analysis, solver and multiphysics simulation software. 
It allows conventional physics-based user interfaces and coupled systems of partial differential equations.

More information
================
 - Homepage: https://www.comsol.com/
]==])

whatis([==[Description: 
 COMSOL Multiphysics is a cross-platform finite element analysis, solver and multiphysics simulation software. 
 It allows conventional physics-based user interfaces and coupled systems of partial differential equations.
]==])
whatis([==[Homepage: https://www.comsol.com]==])
whatis([==[URL: https://www.comsol.com]==])

local err_message="\n COMSOL is currently only licenced for a subset of Robinson users \n For more info and possible access, ask on slack.\n"

local foundgroup = required_group("comsol-robinson")
LmodMessage(foundgroup)

if (not foundgroup) then
 	LmodError(err_message)
end

always_load("intel/2022a")
local root = "/home/software/apps/comsol/6.0/bin"

conflict("comsol")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root))


