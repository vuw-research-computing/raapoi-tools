help([==[

Description
===========
Olex 2-1.5-alpha


More information
================
 - Homepage: olex2
]==])

whatis([==[Olex 2-1.5-alpha

]==])
whatis([==[Homepage: Olex]==])
whatis([==[URL: Olex]==])

local root = "/home/software/apps/olex/olex2-1.5-alpha"

conflict("olex")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("OLEX2_CCTBX_DIR", pathJoin(root,"cctbx")

setenv("BOOST_ADAPTBX_FPE_DEFAULT", "1")
setenv("BOOST_ADAPTBX_SIGNALS_DEFAULT", "1")

setenv("OLEX2_GL_STEREO", "FALSE")
setenv("OLEX2_GL_MULTISAMPLE", "FALSE")
setenv("OLEX2_GL_DEPTH_BITS", "16")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "cctbx", "cctbx_build", "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))


setenv("PYTHONHOME",root)
prepend_path("PATH", root)
