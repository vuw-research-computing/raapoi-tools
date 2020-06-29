-- -*- lua -*-
help(
[[
This module sets up specfem2d with cuda support and mpi
]])




always_load("ucx/1.8.0","openmpi/4.0.4-cuda")

prepend_path("PATH", "/home/software/apps/specfem2d/nov18bin")  -- /home/software/apps/specfem2d/nov18bin

whatis("Name        : specfem2d")
whatis("Version     : Nov2018")
whatis("URL         : https://github.com/geodynamics/specfem2d")