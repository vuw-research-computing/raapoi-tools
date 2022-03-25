help([==[

Description
===========
Haploflow is a strain-aware viral genome assembler for short read sequence data.


More information
================
 - Homepage: https://github.com/hzi-bifo/Haploflow/
]==])

whatis([==[Haploflow is a strain-aware viral genome assembler for short read sequence data. 
It uses a flow algorithm on a deBruijn graph data structure to resolve viral strains. 
Haploflow is still actively under development and written entirely in C++.]==])
whatis([==[Homepage: https://github.com/hzi-bifo/Haploflow/]==])
whatis([==[URL: https://github.com/hzi-bifo/Haploflow/]==])

local root = "/home/software/apps/Haploflow/1.0"

conflict("Haploflow")

if not ( isloaded("Boost/1.76.0") ) then
    load("Boost/1.76.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", root)