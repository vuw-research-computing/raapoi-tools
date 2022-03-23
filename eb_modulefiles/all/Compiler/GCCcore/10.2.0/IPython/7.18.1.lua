help([==[

Description
===========
IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.


More information
================
 - Homepage: https://ipython.org/index.html


Included extensions
===================
argon2-cffi-20.1.0, async_generator-1.10, backcall-0.2.0, bleach-3.2.1,
defusedxml-0.6.0, entrypoints-0.3, ipykernel-5.3.4, ipython-7.18.1,
ipython_genutils-0.2.0, ipywidgets-7.5.1, jedi-0.17.2, jupyter_client-6.1.7,
jupyter_core-4.6.3, jupyterlab_pygments-0.1.2, mistune-0.8.4, nbclient-0.5.0,
nbconvert-6.0.7, nbformat-5.0.7, nest_asyncio-1.4.1, notebook-6.1.4,
pandocfilters-1.4.2, parso-0.7.1, pickleshare-0.7.5, prometheus_client-0.8.0,
prompt_toolkit-3.0.7, pyzmq-19.0.2, Send2Trash-1.5.0, terminado-0.9.1,
testpath-0.4.4, tornado-6.0.4, traitlets-5.0.4, widgetsnbextension-3.5.1
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: https://ipython.org/index.html]==])
whatis([==[URL: https://ipython.org/index.html]==])
whatis([==[Extensions: argon2-cffi-20.1.0, async_generator-1.10, backcall-0.2.0, bleach-3.2.1, defusedxml-0.6.0, entrypoints-0.3, ipykernel-5.3.4, ipython-7.18.1, ipython_genutils-0.2.0, ipywidgets-7.5.1, jedi-0.17.2, jupyter_client-6.1.7, jupyter_core-4.6.3, jupyterlab_pygments-0.1.2, mistune-0.8.4, nbclient-0.5.0, nbconvert-6.0.7, nbformat-5.0.7, nest_asyncio-1.4.1, notebook-6.1.4, pandocfilters-1.4.2, parso-0.7.1, pickleshare-0.7.5, prometheus_client-0.8.0, prompt_toolkit-3.0.7, pyzmq-19.0.2, Send2Trash-1.5.0, terminado-0.9.1, testpath-0.4.4, tornado-6.0.4, traitlets-5.0.4, widgetsnbextension-3.5.1]==])

local root = "/home/software/EasyBuild/software/IPython/7.18.1-GCCcore-10.2.0"

conflict("IPython")

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("ZeroMQ/4.3.3") ) then
    load("ZeroMQ/4.3.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "7.18.1")
setenv("EBDEVELIPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-IPython-7.18.1-easybuild-devel"))

prepend_path("JUPYTER_PATH", pathJoin(root, "share/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.1
setenv("EBEXTSLISTIPYTHON", "ipython_genutils-0.2.0,ipython-7.18.1,pickleshare-0.7.5,prompt_toolkit-3.0.7,traitlets-5.0.4,parso-0.7.1,jedi-0.17.2,testpath-0.4.4,Send2Trash-1.5.0,bleach-3.2.1,pandocfilters-1.4.2,pyzmq-19.0.2,entrypoints-0.3,jupyter_core-4.6.3,nbformat-5.0.7,mistune-0.8.4,defusedxml-0.6.0,jupyterlab_pygments-0.1.2,async_generator-1.10,nest_asyncio-1.4.1,nbclient-0.5.0,nbconvert-6.0.7,tornado-6.0.4,terminado-0.9.1,jupyter_client-6.1.7,backcall-0.2.0,ipykernel-5.3.4,prometheus_client-0.8.0,ipywidgets-7.5.1,argon2-cffi-20.1.0,notebook-6.1.4,widgetsnbextension-3.5.1")
