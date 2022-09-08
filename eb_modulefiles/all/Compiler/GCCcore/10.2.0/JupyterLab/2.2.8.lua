help([==[

Description
===========
JupyterLab is the next-generation user interface for Project Jupyter offering all the familiar
 building blocks of the classic Jupyter Notebook (notebook, terminal, text editor, file browser, rich outputs,
 etc.) in a flexible and powerful user interface. JupyterLab will eventually replace the classic Jupyter
 Notebook.


More information
================
 - Homepage: https://jupyter.org/


Included extensions
===================
json5-0.9.5, JupyterLab-2.2.8, jupyterlab_server-1.2.0
]==])

whatis([==[Description: JupyterLab is the next-generation user interface for Project Jupyter offering all the familiar
 building blocks of the classic Jupyter Notebook (notebook, terminal, text editor, file browser, rich outputs,
 etc.) in a flexible and powerful user interface. JupyterLab will eventually replace the classic Jupyter
 Notebook.]==])
whatis([==[Homepage: https://jupyter.org/]==])
whatis([==[URL: https://jupyter.org/]==])
whatis([==[Extensions: json5-0.9.5, JupyterLab-2.2.8, jupyterlab_server-1.2.0]==])

local root = "/home/software/EasyBuild/software/JupyterLab/2.2.8-GCCcore-10.2.0"

conflict("JupyterLab")

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("IPython/7.18.1") ) then
    load("IPython/7.18.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERLAB", root)
setenv("EBVERSIONJUPYTERLAB", "2.2.8")
setenv("EBDEVELJUPYTERLAB", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-JupyterLab-2.2.8-easybuild-devel"))

setenv("JUPYTERLAB_DIR", "/home/software/EasyBuild/software/JupyterLab/2.2.8-GCCcore-10.2.0/share/jupyter/lab")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.1
setenv("EBEXTSLISTJUPYTERLAB", "json5-0.9.5,jupyterlab_server-1.2.0,JupyterLab-2.2.8")
