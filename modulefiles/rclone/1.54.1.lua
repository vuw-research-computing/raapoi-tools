help([==[

Description
===========
Rclone is a command line program to sync files and directories to and from
 a variety of online storage services


More information
================
 - Homepage: https://rclone.org/
]==])

whatis([==[Description: 
 Rclone is a command line program to sync files and directories to and from
 a variety of online storage services
]==])
whatis([==[Homepage: https://rclone.org/]==])
whatis([==[URL: https://rclone.org/]==])

local root = "/home/software/apps/rclone/1.54.1"

conflict("rclone")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root))
