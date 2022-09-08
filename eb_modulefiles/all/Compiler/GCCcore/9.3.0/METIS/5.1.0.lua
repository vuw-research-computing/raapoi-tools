help([==[

Description
===========
METIS is a set of serial programs for partitioning graphs, partitioning
 finite element meshes, and producing fill reducing orderings for sparse
 matrices. The algorithms implemented in METIS are based on the multilevel
 recursive-bisection, multilevel k-way, and multi-constraint partitioning
 schemes.


More information
================
 - Homepage: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview
]==])

whatis([==[Description: 
 METIS is a set of serial programs for partitioning graphs, partitioning
 finite element meshes, and producing fill reducing orderings for sparse
 matrices. The algorithms implemented in METIS are based on the multilevel
 recursive-bisection, multilevel k-way, and multi-constraint partitioning
 schemes.
]==])
whatis([==[Homepage: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview]==])
whatis([==[URL: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview]==])

local root = "/home/software/EasyBuild/software/METIS/5.1.0-GCCcore-9.3.0"

conflict("METIS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMETIS", root)
setenv("EBVERSIONMETIS", "5.1.0")
setenv("EBDEVELMETIS", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-METIS-5.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
