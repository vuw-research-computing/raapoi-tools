help([==[

Description
===========
Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.


More information
================
 - Homepage: https://arrow.apache.org
]==])

whatis([==[Description: Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.]==])
whatis([==[Homepage: https://arrow.apache.org]==])
whatis([==[URL: https://arrow.apache.org]==])

local root = "/home/software/EasyBuild/software/Arrow/6.0.0-foss-2021a"

conflict("Arrow")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("SciPy-bundle/2021.05") ) then
    load("SciPy-bundle/2021.05")
end

if not ( isloaded("Boost/1.76.0") ) then
    load("Boost/1.76.0")
end

if not ( isloaded("lz4/1.9.3") ) then
    load("lz4/1.9.3")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zstd/1.4.9") ) then
    load("zstd/1.4.9")
end

if not ( isloaded("snappy/1.1.8") ) then
    load("snappy/1.1.8")
end

if not ( isloaded("RapidJSON/1.1.0") ) then
    load("RapidJSON/1.1.0")
end

if not ( isloaded("RE2/2022-02-01") ) then
    load("RE2/2022-02-01")
end

if not ( isloaded("utf8proc/2.6.1") ) then
    load("utf8proc/2.6.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARROW", root)
setenv("EBVERSIONARROW", "6.0.0")
setenv("EBDEVELARROW", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-Arrow-6.0.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
