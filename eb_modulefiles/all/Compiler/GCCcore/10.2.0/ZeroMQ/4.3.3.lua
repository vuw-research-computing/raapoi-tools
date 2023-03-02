help([==[

Description
===========
ZeroMQ looks like an embeddable networking library but acts like a concurrency framework.
 It gives you sockets that carry atomic messages across various transports like in-process,
 inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fanout,
 pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered
 products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous
 message-processing tasks. It has a score of language APIs and runs on most operating systems.


More information
================
 - Homepage: https://www.zeromq.org/
]==])

whatis([==[Description: ZeroMQ looks like an embeddable networking library but acts like a concurrency framework.
 It gives you sockets that carry atomic messages across various transports like in-process,
 inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fanout,
 pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered
 products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous
 message-processing tasks. It has a score of language APIs and runs on most operating systems.]==])
whatis([==[Homepage: https://www.zeromq.org/]==])
whatis([==[URL: https://www.zeromq.org/]==])

local root = "/home/software/EasyBuild/software/ZeroMQ/4.3.3-GCCcore-10.2.0"

conflict("ZeroMQ")

if not ( isloaded("OpenPGM/5.2.122") ) then
    load("OpenPGM/5.2.122")
end

if not ( isloaded("libsodium/1.0.18") ) then
    load("libsodium/1.0.18")
end

if not ( isloaded("util-linux/2.36") ) then
    load("util-linux/2.36")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTZEROMQ", root)
setenv("EBVERSIONZEROMQ", "4.3.3")
setenv("EBDEVELZEROMQ", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-ZeroMQ-4.3.3-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
