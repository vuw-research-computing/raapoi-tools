help([==[

Description
===========
Rclone script to copy to cloudstor in paranoid while loop.  
You need to make sure you've setup rclone first! 
See: https://support.aarnet.edu.au/hc/en-us/articles/115007168507-Can-I-use-the-command-line-or-WebDav-

copyToCloudstor <src> CloudStor:<dest>
  --help              : This help
  --skipversioncheck  : Skip rclone version checking
  --nocheck           : Just pushes once without retrying
  -p|--parallel       : Number of file transfers to run in parallel. (default 6)
  --pushonce          : Just does a blind push (same as --nocheck --pushfirst)
  --pushfirst         : Skip first oneway check (one less propfind)
  --showdiff          : Show diff when checking for differences


More information
================
 - Homepage: https://github.com/AARNet/copyToCloudstor
]==])

whatis([==[Description: 
Rclone script to copy to cloudstor in paranoid while loop
]==])
whatis([==[Homepage: https://github.com/AARNet/copyToCloudstor]==])
whatis([==[URL: https://github.com/AARNet/copyToCloudstor]==])

local root = "/home/software/apps/cloudStor/copyToCloudStor/82b491f"

conflict("copyToCloudStor")
always_load("rclone")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root))
