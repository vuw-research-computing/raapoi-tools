help([==[

Description
===========
JBIG-KIT is a software implementation of the JBIG1 data
 compression standard (ITU-T T.82), which was designed for bi-level image
 data, such as scanned documents.


More information
================
 - Homepage: https://www.cl.cam.ac.uk/~mgk25/jbigkit/
]==])

whatis([==[Description: JBIG-KIT is a software implementation of the JBIG1 data
 compression standard (ITU-T T.82), which was designed for bi-level image
 data, such as scanned documents.]==])
whatis([==[Homepage: https://www.cl.cam.ac.uk/~mgk25/jbigkit/]==])
whatis([==[URL: https://www.cl.cam.ac.uk/~mgk25/jbigkit/]==])

local root = "/home/software/EasyBuild/software/jbigkit/2.1-GCCcore-10.3.0"

conflict("jbigkit")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJBIGKIT", root)
setenv("EBVERSIONJBIGKIT", "2.1")
setenv("EBDEVELJBIGKIT", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-jbigkit-2.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
