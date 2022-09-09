help([==[

Description
===========
Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized
 by a source of examples, and then generates simple and comprehensible examples that make your tests fail. This lets
 you find more bugs in your code with less work.


More information
================
 - Homepage: https://github.com/HypothesisWorks/hypothesis
]==])

whatis([==[Description: Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized
 by a source of examples, and then generates simple and comprehensible examples that make your tests fail. This lets
 you find more bugs in your code with less work.]==])
whatis([==[Homepage: https://github.com/HypothesisWorks/hypothesis]==])
whatis([==[URL: https://github.com/HypothesisWorks/hypothesis]==])

local root = "/home/software/EasyBuild/software/hypothesis/5.41.2-GCCcore-10.2.0"

conflict("hypothesis")

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHYPOTHESIS", root)
setenv("EBVERSIONHYPOTHESIS", "5.41.2")
setenv("EBDEVELHYPOTHESIS", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-hypothesis-5.41.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
