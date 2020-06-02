---
layout: master
---

# Jupyter

Jupyter/JupyterLab should be installed on your computer if you have installed Anaconda.
but please also [verify your Jupyter installation](#how-to-verify-the-installation).

If you instead installed Miniconda, you can install JupyterLab by:

```bash
$ conda install -c conda-forge jupyterlab
```

If you are not using `conda`, you can install JupyterLab using `pip`:

```bash
pip install jupyterlab
```

Regardless of how you installed JupyterLab, [please also verify your
installation](#how-to-verify-the-installation).

## Installation of extensions on Linux, macOS, and Windows

Here you will find how to install optional JupyterLab extensions which
will be demonstrated during the workshop.

You are not required to install these extensions, 
but if you wish to you can follow the instructions below.

JupyterLab extensions are npm packages (standard package format for Javascript), 
and to install the extensions you need to install the `nodejs` package:

```bash
$ conda install nodejs
```
If you get error: *CondaVerificationError* use:
```bash
$ conda install -c conda-forge nodejs
```

### JupyterLab extension manager

To manage JupyterLab extensions, it's easiest to use the built-in
extension manager.  Once it is installed, you can easily activate or
deactivate other extensions.  Some extensions require the installation
of a companion Python package, while others only require you to
install the extension via the extension manager.

This is documented in the [JupyterLab
documentation](https://jupyterlab.readthedocs.io/en/stable/user/extensions.html).

You see the extension manager in the left sidebar.  If you use
JupyterLab 2.1 or newer (released 7 april 2020), then it is already
enabled.

If you use jupyterlab less than 2.1, then you need to enable the
extension manager.  It needs to be enabled from the Settings→Enable
Extension Manager option.  (For even older versions, it might not be
available by default, in this case, consider upgrading).



#### Widgets

Install the `ipywidgets` package via conda:
```bash
$ conda install ipywidgets
```
or via pip (which needs an extra activation step):
```bash
$ pip install ipywidgets
$ jupyter nbextension enable --py widgetsnbextension
```

and then activate it in JupyterLab by installing the
`@jupyter-widgets/jupyterlab-manager` extension via the extension
manager.


#### Git extension

`jupyterlab-git` is a JupyterLab extension for version control using Git.  
Install it via:

```bash
$ conda install -c conda-forge jupyterlab-git
```

or 

```bash
$ pip install jupyterlab-git
```

and then activate it by finding and installing `jupyterlab-git` 
via the extension manager.

`jupyterlab-git` will also install the `nbdime` package as one of its
dependencies. `nbdime` provides tools for diffing and merging Jupyter
notebooks.

#### GitHub extension

`@jupyterlab/github` is a JupyterLab extension for accessing GitHub repositories.

First install it by:
```bash
$ pip install jupyterlab_github
```

and then activate it by finding and installing `@jupyterlab/github`
via the extension manager.



### Other languages

Python will be the main language used during the CodeRefinery workshop, but if
you use other programming languages the chances are high that someone has written 
a Jupyter kernel for that language!

A full list of available Jupyter kernels can be [found here](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels). Find your favorite language in the list and click 
the link for installation and usage instructions.


## How to verify the installation

To see whether JupyterLab is working as expected, type the command

```shell
$ jupyter-lab
```

and see if it opens up a new tab in your browser showing the JupyterLab interface.

Please also verify which Python version JupyterLab sees. Ideally it can see Python 3.

On Windows, the JupyterLab App can also be launched by clicking on the 
JupyterLab icon in the Anaconda menu.
