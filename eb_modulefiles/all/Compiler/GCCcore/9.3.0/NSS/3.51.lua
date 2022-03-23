help([==[

Description
===========
Network Security Services (NSS) is a set of libraries designed to support cross-platform development
 of security-enabled client and server applications.


More information
================
 - Homepage: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS
]==])

whatis([==[Description: Network Security Services (NSS) is a set of libraries designed to support cross-platform development
 of security-enabled client and server applications.]==])
whatis([==[Homepage: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS]==])
whatis([==[URL: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS]==])

local root = "/home/software/EasyBuild/software/NSS/3.51-GCCcore-9.3.0"

conflict("NSS")

if not ( isloaded("NSPR/4.25") ) then
    load("NSPR/4.25")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNSS", root)
setenv("EBVERSIONNSS", "3.51")
setenv("EBDEVELNSS", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-NSS-3.51-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/nss"))
-- Built with EasyBuild version 4.4.1
