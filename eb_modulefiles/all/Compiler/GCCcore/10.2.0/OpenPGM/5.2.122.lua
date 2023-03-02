help([==[

Description
===========
OpenPGM is an open source implementation of the Pragmatic General Multicast
 (PGM) specification in RFC 3208 available at www.ietf.org. PGM is a reliable
 and scalable multicast protocol that enables receivers to detect loss, request
 retransmission of lost data, or notify an application of unrecoverable loss.
 PGM is a receiver-reliable protocol, which means the receiver is responsible
 for ensuring all data is received, absolving the sender of reception
 responsibility.


More information
================
 - Homepage: https://code.google.com/p/openpgm/
]==])

whatis([==[Description: 
 OpenPGM is an open source implementation of the Pragmatic General Multicast
 (PGM) specification in RFC 3208 available at www.ietf.org. PGM is a reliable
 and scalable multicast protocol that enables receivers to detect loss, request
 retransmission of lost data, or notify an application of unrecoverable loss.
 PGM is a receiver-reliable protocol, which means the receiver is responsible
 for ensuring all data is received, absolving the sender of reception
 responsibility.
]==])
whatis([==[Homepage: https://code.google.com/p/openpgm/]==])
whatis([==[URL: https://code.google.com/p/openpgm/]==])

local root = "/home/software/EasyBuild/software/OpenPGM/5.2.122-GCCcore-10.2.0"

conflict("OpenPGM")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENPGM", root)
setenv("EBVERSIONOPENPGM", "5.2.122")
setenv("EBDEVELOPENPGM", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-OpenPGM-5.2.122-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
