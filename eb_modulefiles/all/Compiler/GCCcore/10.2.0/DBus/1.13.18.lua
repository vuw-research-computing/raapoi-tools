help([==[

Description
===========
D-Bus is a message bus system, a simple way for applications to talk
 to one another.  In addition to interprocess communication, D-Bus helps
 coordinate process lifecycle; it makes it simple and reliable to code
 a "single instance" application or daemon, and to launch applications
 and daemons on demand when their services are needed.


More information
================
 - Homepage: https://dbus.freedesktop.org/
]==])

whatis([==[Description: 
 D-Bus is a message bus system, a simple way for applications to talk
 to one another.  In addition to interprocess communication, D-Bus helps
 coordinate process lifecycle; it makes it simple and reliable to code
 a "single instance" application or daemon, and to launch applications
 and daemons on demand when their services are needed.
]==])
whatis([==[Homepage: https://dbus.freedesktop.org/]==])
whatis([==[URL: https://dbus.freedesktop.org/]==])

local root = "/home/software/EasyBuild/software/DBus/1.13.18-GCCcore-10.2.0"

conflict("DBus")

if not ( isloaded("expat/2.2.9") ) then
    load("expat/2.2.9")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDBUS", root)
setenv("EBVERSIONDBUS", "1.13.18")
setenv("EBDEVELDBUS", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-DBus-1.13.18-easybuild-devel"))

-- Built with EasyBuild version 4.3.5.dev0
