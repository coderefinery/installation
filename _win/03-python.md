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

Anaconda already contains all the required Python packages which will be used during the CodeRefinery workshop. 

#### Optional steps

If you want to experiment with RISE, a slideshow extension to Jupyter, or if you're interested in using R, Julia or Matlab/Octave as a kernel to Jupyter, a few additional steps are required.

To install RISE [(Reveal.js - Jupyter/IPython Slideshow Extension)](https://github.com/damianavila/RISE), which will be demonstrated in the workshop, you should run 

```shell
$ conda install -c damianavila82 rise
```
After that the following two commands should be executed:

```shell
$ jupyter-nbextension install rise --py --sys-prefix
$ jupyter-nbextension enable rise --py --sys-prefix
```

Python will be the main language used during the CodeRefinery workshop, but if you're an R person and want to experiment with using R in Jupyter, install the `r-essentials` package via

```shell
$ conda install -c r r-essentials
```

For further information on using R in Jupyter see [this page](https://www.continuum.io/blog/developer/jupyter-and-conda-r).

Matlab and Octave can also be used as kernels to Jupyter. To install the Octave kernel, run

```shell
$ pip install octave_kernel
$ python -m octave_kernel.install
```

See [this page](https://github.com/Calysto/octave_kernel) for further information.

To enable Matlab in Jupyter, we refer to [this page](https://anneurai.net/2015/11/12/matlab-based-ipython-notebooks/) and [this page](https://w01f359.wordpress.com/2016/10/09/matlab-notebook/) which contain detailed instructions. If you want to play around with IJulia, the Julia kernel for Jupyter, see instructions [here](https://github.com/JuliaLang/IJulia.jl).

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
