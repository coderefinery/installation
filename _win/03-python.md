---
title: Python
---

We recommend using Python version 2.7 for the exercises in the CodeRefinery
workshop, but if you have a strong preference for version 3.5 that will work as
well.

Watch the [video tutorial](https://www.youtube.com/watch?v=xxQ0mzZ8UvA)
(copyright Software Carpentry).

- Open [http://continuum.io/downloads](http://continuum.io/downloads) with your web browser.
- Download the Python 2 installer for Windows.
- Install Python 2 using all of the defaults for installation except make sure to check
  `Make Anaconda the default Python`.

You may wish to install the required Python packages into an isolated conda environment. The command for creating a conda environment and activating it is

```shell
$ conda create --prefix ~/coderef-pyenv python=2.7
$ activate ~/coderef-pyenv
```

To deactivate the newly created environment, simply type `deactivate`.

Anaconda already contains all the required Python packages which will be used during the CodeRefinery workshop, with the exception of ipyparallel and rise. 
If you want to try out RISE, the Reveal.js - Jupyter/IPython Slideshow Extension which will be demonstrated in the workshop, a few additional steps are required after installing Jupyter. The recommended way to install it is with 

```shell
$ conda install -c damianavila82 rise
```

After that the following two commands should be executed:

```shell
$ jupyter-nbextension install rise --py --sys-prefix
$ jupyter-nbextension enable rise --py --sys-prefix
```


### How to verify the installation

In the command prompt, type:

```shell
$ python --version
```
If your installation was successful, this should return something like

```shell
Python 2.7.12 :: Continuum Analytics, Inc.
```

To check if you can successfully import a specific package, you can type

```shell
$ python -c "import <package-name>"
```

and verify that you do not get an ImportError.

The Jupyter Notebook App can be launched by clicking on the Jupyter Notebook
icon installed by Anaconda in the start menu.
Verify that it opens up a new tab in your browser showing the Jupyter dashboard.
