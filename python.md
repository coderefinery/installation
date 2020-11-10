---
layout: master
---

# Python

Although Python is likely already installed on your laptop, to avoid any
possible conflicts we strongly recommend that you install a fresh Python version 3.5 or higher with a full Anaconda installation for the exercises in the CodeRefinery workshop. 


If you do not follow the instructions given below, we cannot guarantee that all the CodeRefinery exercises will work out of the box.

> (optional) Advanced: The [coderefinery software
> repository](https://github.com/coderefinery/software) has Conda
> environment.yml and requirements.txt files for most Python software.
> Currently, this is only for learners who already know how these tools
> work.


## Installation on Linux and macOS

Follow these links for download and installation instructions:

- [Anaconda](https://docs.continuum.io/anaconda/install)


> ## Remark
> You may have heard about [Miniconda](https://docs.conda.io/en/latest/miniconda.html) and may wonder why we recommend the full Anaconda installation instead. We will actually discuss this topic during the CodeRefinery workshop and the [Reproducible Research](https://coderefinery.github.io/reproducible-research/) lesson.
> 
{: .discussion}

Note that it is best to install Anaconda into a directory in the home
folder, rather than in a system directory, and one should not `sudo` it.

After installing Anaconda you can install the required packages
(listed below) via `conda install`.

Anaconda prepends your PATH with `$HOME/anaconda3/bin` (or
`$HOME/miniconda3/bin`), assuming that `$HOME/anaconda3` is where you installed
Anaconda3, by adding lines to your `.bash_profile` file.
To verify your Anaconda installation, open a new terminal (or type
`source .bash_profile` in the terminal session in which you installed
Anaconda).


### Installing required packages

We will use the following Python packages in the CodeRefinery exercises:

- numpy
- matplotlib
- jupyter
- jupyterlab
- pandas
- seaborn
- sphinx
- sphinx_rtd_theme
- pytest
- pycodestyle
- (optional) ipywidgets

If you have installed a new Python environment via Anaconda, you probably already
have all these packages installed on your system.


```shell
$ conda install <package-name>
```

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on Windows

Watch the [video tutorial](https://www.youtube.com/watch?v=xxQ0mzZ8UvA)
(copyright Software Carpentry).

- Open <https://www.anaconda.com/products/individual>.
- Download the Python 3 installer for Windows.
- Install Python 3 using all of the defaults for installation except make sure to check
  `Make Anaconda the default Python`.

Anaconda contains almost all the required Python packages which will be used during the CodeRefinery workshop. 

For installation missing packages, the easiest is to launch [Anaconda navigator](https://docs.anaconda.com/anaconda/navigator/) and install packages through [it](https://docs.anaconda.com/anaconda/navigator/tutorials/manage-packages/).

## How to verify the installation

For windows users, use git bash Terminal and for everyone type in the command prompt:

```shell
$ python --version
```
If your installation was successful, you will see your Python version. It needs to start with a "3":

```shell
Python 3.6.5 :: Continuum Analytics, Inc.
```

Check whether you can import `pytest` - this should not produce an error:

```shell
$ python -c "import pytest"
```

Now check that you can start pytest and sphinx-build directly from the command
line (not a problem if versions differ a bit):

```shell
$ pytest --version

This is pytest version 5.2.1

$ sphinx-build --version

sphinx-build 2.2.0
```

Please also verify that `sphinx_rtd_theme` (Sphinx Read the Docs theme) is installed:

```shell
$ python -c "import sphinx_rtd_theme"
```

If `sphinx_rtd_theme` is not part of your Anaconda installation, you can install it with the Anaconda navigator (recommended for Windows users) or with:

```shell
$ conda install sphinx_rtd_theme
```

Finally verify that you can run both Git and Python commands in the same environment.
This should not produce an error:

```shell
$ python --version
$ git --version
```
