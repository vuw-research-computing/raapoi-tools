help([==[

Description
===========
PyYAML is a YAML parser and emitter for the Python programming language.


More information
================
 - Homepage: https://github.com/yaml/pyyaml


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.8.6 (default), Python/2.7.18
]==])

whatis([==[Description: PyYAML is a YAML parser and emitter for the Python programming language.]==])
whatis([==[Homepage: https://github.com/yaml/pyyaml]==])
whatis([==[URL: https://github.com/yaml/pyyaml]==])
whatis([==[Compatible modules: Python/3.8.6 (default), Python/2.7.18]==])

local root = "/home/software/EasyBuild/software/PyYAML/5.3.1-GCCcore-10.2.0"

conflict("PyYAML")

if not ( isloaded("libyaml/0.2.5") ) then
    load("libyaml/0.2.5")
end

if not ( isloaded("Python/3.8.6") ) and not ( isloaded("Python/2.7.18") ) then
    load("Python/3.8.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYYAML", root)
setenv("EBVERSIONPYYAML", "5.3.1")
setenv("EBDEVELPYYAML", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-PyYAML-5.3.1-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.3.4
