help([==[

Description
===========
JsonCpp is a C++ library that allows manipulating JSON values,
 including serialization and deserialization to and from strings. It can also preserve existing comment in
 unserialization/serialization steps, making it a convenient format to store user input files.


More information
================
 - Homepage: https://open-source-parsers.github.io/jsoncpp-docs/doxygen/index.html
]==])

whatis([==[Description:  JsonCpp is a C++ library that allows manipulating JSON values,
 including serialization and deserialization to and from strings. It can also preserve existing comment in
 unserialization/serialization steps, making it a convenient format to store user input files. ]==])
whatis([==[Homepage: https://open-source-parsers.github.io/jsoncpp-docs/doxygen/index.html]==])
whatis([==[URL: https://open-source-parsers.github.io/jsoncpp-docs/doxygen/index.html]==])

local root = "/home/software/EasyBuild/software/JsonCpp/1.9.4-GCCcore-10.3.0"

conflict("JsonCpp")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTJSONCPP", root)
setenv("EBVERSIONJSONCPP", "1.9.4")
setenv("EBDEVELJSONCPP", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-JsonCpp-1.9.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
