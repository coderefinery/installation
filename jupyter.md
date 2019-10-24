---
layout: master
---

# Jupyter

Jupyter/JupyterLab should be installed on your computer if you have installed Anaconda.
but please also [verify your Jupyter installation](#how-to-verify-the-installation).


## Installation of extensions on Linux, macOS, and Windows

Here you will find how to install optional JupyterLab extensions which will be demonstrated
during the workshop.

You are not required to install these extensions, 
but if you wish to you can follow the instructions below.

JupyterLab extensions are npm packages (standard package format for Javascript), 
and to install the extensions you need to install the `nodejs` package:

```bash
$ conda install nodejs
```

### Widget extension

To use widgets in JupyterLab, you also need to run the following
command (even if you installed through conda):

```shell
$ jupyter labextension install @jupyter-widgets/jupyterlab-manager
```

For classic notebooks, *if you did not install Python through Anaconda*, and if you installed Jupyter
using `pip` and not `conda`, you will need to execute this command in a terminal in order to
activate widgets in Jupyter:

```shell
 $ conda install nodejs
 $ jupyter nbextension enable --py widgetsnbextension
```


### Diffing/merging notebooks

The `nbdime` packages provides tools for diffing and merging Jupyter notebooks 
and is integrated with Git.

It can be installed by:
```bash
$ pip install nbdime
```
and then activated by
```bash
$ nbdime extensions --enable
```

### Git extension

`jupyterlab-git` is a JupyterLab extension for version control using Git.  

To install it, run these commands:
```bash
$ jupyter labextension install @jupyterlab/git
$ pip install jupyterlab-git
$ jupyter serverextension enable --py jupyterlab_git
```

### GitHub extension

`jupyterlab/github` is a JupyterLab extension for accessing GitHub repositories.

To install it, run this command:
```bash
$ jupyter labextension install @jupyterlab/github
```

### R

Python will be the main language used during the CodeRefinery workshop, but if
you use R and want to experiment with R in Jupyter, install the
`r-essentials` package:

```shell
$ conda install -c r r-essentials
```

### Matlab/Octave/Julia kernels

Matlab, Octave and Julia can also be used as kernels to Jupyter, 
although this will not be covered in the workshop.

To install the Octave kernel, run

```shell
$ pip install octave_kernel
$ python -m octave_kernel.install
```

See [this page](https://github.com/Calysto/octave_kernel) for further information.

To enable Matlab in Jupyter, we refer to [this page](https://anneurai.net/2015/11/12/matlab-based-ipython-notebooks/) and [this page](https://w01f359.wordpress.com/2016/10/09/matlab-notebook/) which contain detailed instructions. 

If you want to play around with IJulia, the Julia kernel for Jupyter, see instructions [here](https://github.com/JuliaLang/IJulia.jl).


## How to verify the installation

To see whether JupyterLab is working as expected, type the command

```shell
$ jupyter-lab
```

and see if it opens up a new tab in your browser showing the JupyterLab interface.

Please also verify which Python version JupyterLab sees. Ideally it can see Python 3.

On Windows, the JupyterLab App can also be launched by clicking on the 
JupyterLab icon in the Anaconda menu.
