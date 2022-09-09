help([==[

Description
===========
Rust is a systems programming language that runs blazingly fast, prevents segfaults,
 and guarantees thread safety.


More information
================
 - Homepage: https://www.rust-lang.org
]==])

whatis([==[Description: Rust is a systems programming language that runs blazingly fast, prevents segfaults,
 and guarantees thread safety.]==])
whatis([==[Homepage: https://www.rust-lang.org]==])
whatis([==[URL: https://www.rust-lang.org]==])

local root = "/home/software/EasyBuild/software/Rust/1.54.0-GCCcore-11.2.0"

conflict("Rust")

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRUST", root)
setenv("EBVERSIONRUST", "1.54.0")
setenv("EBDEVELRUST", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Rust-1.54.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
