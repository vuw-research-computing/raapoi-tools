-- -*- lua -*-
help(
[[
This module sets up specfem2d with mpi
]])




always_load("ucx/1.8.0","openmpi/4.0.4","gcc/8.2.0")

prepend_path("PATH", "/home/software/apps/specfem2d/nov18bin-nocuda")  -- /home/software/apps/specfem2d/nov18bin

whatis("Name        : specfem2d-nocuda")
whatis("Version     : Nov2018-nocuda")
whatis("URL         : https://github.com/geodynamics/specfem2d")