help([==[

Description
===========
ModelTest-NG is a tool for selecting the best-fit model of evolution 
for DNA and protein alignments. ModelTest-NG supersedes jModelTest 
and ProtTest in one single tool, with graphical and command console 
interfaces.  Command line only in this build


More information
================
 - Homepage: https://github.com/ddarriba/modeltest
]==])

whatis([==[ModelTest-NG 0.1.7

]==])
whatis([==[Homepage: https://github.com/ddarriba/modeltest]==])
whatis([==[URL: https://github.com/ddarriba/modeltest]==])

local root = "/home/software/apps/modeltest-ng/0.1.7"

if not ( isloaded("flex/2.6.4") ) then
    load("flex/2.6.4")
end

if not ( isloaded("Bison/3.7.1") ) then
    load("Bison/3.7.1")
end

conflict("ModelTest")
prepend_path("PATH", pathJoin(root, "bin"))
