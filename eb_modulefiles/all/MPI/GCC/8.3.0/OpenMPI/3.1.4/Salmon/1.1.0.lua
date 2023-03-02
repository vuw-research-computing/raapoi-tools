help([==[

Description
===========
Salmon is a wicked-fast program to produce a highly-accurate,
 transcript-level quantification estimates from RNA-seq data.


More information
================
 - Homepage: https://github.com/COMBINE-lab/salmon
]==])

whatis([==[Description: Salmon is a wicked-fast program to produce a highly-accurate,
 transcript-level quantification estimates from RNA-seq data.]==])
whatis([==[Homepage: https://github.com/COMBINE-lab/salmon]==])
whatis([==[URL: https://github.com/COMBINE-lab/salmon]==])

local root = "/home/software/EasyBuild/software/Salmon/1.1.0-gompi-2019b"

conflict("Salmon")

if not ( isloaded("Boost/1.71.0") ) then
    load("Boost/1.71.0")
end

if not ( isloaded("tbb/2019_U9") ) then
    load("tbb/2019_U9")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSALMON", root)
setenv("EBVERSIONSALMON", "1.1.0")
setenv("EBDEVELSALMON", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-Salmon-1.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
