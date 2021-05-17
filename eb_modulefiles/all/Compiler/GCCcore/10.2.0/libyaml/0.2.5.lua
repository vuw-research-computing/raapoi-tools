help([==[

Description
===========
LibYAML is a YAML parser and emitter written in C.


More information
================
 - Homepage: https://pyyaml.org/wiki/LibYAML
]==])

whatis([==[Description: LibYAML is a YAML parser and emitter written in C.]==])
whatis([==[Homepage: https://pyyaml.org/wiki/LibYAML]==])
whatis([==[URL: https://pyyaml.org/wiki/LibYAML]==])

local root = "/home/software/EasyBuild/software/libyaml/0.2.5-GCCcore-10.2.0"

conflict("libyaml")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBYAML", root)
setenv("EBVERSIONLIBYAML", "0.2.5")
setenv("EBDEVELLIBYAML", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-libyaml-0.2.5-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
