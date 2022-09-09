help([==[

Description
===========
Quantum ESPRESSO  is an integrated suite of computer codes
for electronic-structure calculations and materials modeling at the nanoscale.
It is based on density-functional theory, plane waves, and pseudopotentials
(both norm-conserving and ultrasoft).


More information
================
 - Homepage: https://www.quantum-espresso.org
]==])

whatis([==[Description: Quantum ESPRESSO  is an integrated suite of computer codes
for electronic-structure calculations and materials modeling at the nanoscale.
It is based on density-functional theory, plane waves, and pseudopotentials
(both norm-conserving and ultrasoft).
]==])
whatis([==[Homepage: https://www.quantum-espresso.org]==])
whatis([==[URL: https://www.quantum-espresso.org]==])

local root = "/home/software/EasyBuild/software/QuantumESPRESSO/7.1-intel-2022a"

conflict("QuantumESPRESSO")

if not ( isloaded("imkl/2022.1.0") ) then
    load("imkl/2022.1.0")
end

if not ( isloaded("imkl-FFTW/2022.1.0") ) then
    load("imkl-FFTW/2022.1.0")
end

if not ( isloaded("HDF5/1.13.1") ) then
    load("HDF5/1.13.1")
end

if not ( isloaded("ELPA/2021.11.001") ) then
    load("ELPA/2021.11.001")
end

if not ( isloaded("libxc/5.2.3") ) then
    load("libxc/5.2.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTQUANTUMESPRESSO", root)
setenv("EBVERSIONQUANTUMESPRESSO", "7.1")
setenv("EBDEVELQUANTUMESPRESSO", pathJoin(root, "easybuild/MPI-intel-2022.1.0-impi-2021.6.0-QuantumESPRESSO-7.1-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
