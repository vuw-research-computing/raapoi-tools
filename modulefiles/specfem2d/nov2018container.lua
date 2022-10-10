-- -*- lua -*-
help(
[[
This module sets up specfem2d container by aliasing the container shell login to the specfem2d command
Based on DockerHub container https://hub.docker.com/r/biobakery/workflows
Run as "runspecfem2d arguments".

]])

always_load("singularity")
local SPATH="/nfs/home/training"

set_shell_function("startspecfem2d",'singularity shell --nv -s /bin/bash ' .. SPATH .. '/specfem2d.sif',"singularity shell --nv -s /bin/bash " .. SPATH .. "/specfem2d.sif")
set_shell_function("runspecfem2d",'singularity exec --nv ' .. SPATH .. '/specfem2d.sif "$@"',"singularity exec --nv " .. SPATH .. "/specfem2d.sif $*")
-- to export the shell function to a subshell
if (myShellName() == "bash") then
 execute{cmd="export -f startspecfem2d",modeA={"load"}}
 execute{cmd="export -f runspecfem2d",modeA={"load"}}
end

whatis("Name        : specfem2d-container")
whatis("Version     : Nov2018_container")
whatis("URL         : https://github.com/geodynamics/specfem2d")