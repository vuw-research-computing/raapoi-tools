help([==[

Description
===========
old xz version - mostly for nextDenovo which depends on this old version

More information
================
 - Homepage: https://tukaani.org/xz/old.html
]==])

whatis([==[Description: 
Rclone script to copy to cloudstor in paranoid while loop
]==])
whatis([==[Homepage: https://tukaani.org/xz/old.html]==])
whatis([==[URL: https://tukaani.org/xz/old.html]==])

local root = "/home/software/apps/xz/4.999beta"

conflict("xz")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root))
prepend_path("LD_LIBRARY_PATH", pathJoin(root,"/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root,"/lib"))