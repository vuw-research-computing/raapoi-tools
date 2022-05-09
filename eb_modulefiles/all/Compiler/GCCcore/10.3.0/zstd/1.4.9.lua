help([==[

Description
===========
Zstandard is a real-time compression algorithm, providing high compression ratios. 
 It offers a very wide range of compression/speed trade-off, while being backed by a very fast decoder.
 It also offers a special mode for small data, called dictionary compression, and can create dictionaries
 from any sample set.


More information
================
 - Homepage: https://facebook.github.io/zstd
]==])

whatis([==[Description: Zstandard is a real-time compression algorithm, providing high compression ratios. 
 It offers a very wide range of compression/speed trade-off, while being backed by a very fast decoder.
 It also offers a special mode for small data, called dictionary compression, and can create dictionaries
 from any sample set.]==])
whatis([==[Homepage: https://facebook.github.io/zstd]==])
whatis([==[URL: https://facebook.github.io/zstd]==])

local root = "/home/software/EasyBuild/software/zstd/1.4.9-GCCcore-10.3.0"

conflict("zstd")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("gzip/1.10") ) then
    load("gzip/1.10")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

if not ( isloaded("lz4/1.9.3") ) then
    load("lz4/1.9.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTZSTD", root)
setenv("EBVERSIONZSTD", "1.4.9")
setenv("EBDEVELZSTD", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-zstd-1.4.9-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
