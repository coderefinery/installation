---
layout: master
---

# Python

We strongly recommend using Python version 3.5-3.7 for the exercises in the CodeRefinery
workshop. If you only have version 2.7 installed, the instructions below 
describe how you can set up an isolated Python3 environment.

## Installation on Linux and macOS

Although Python is likely already installed on your laptop, to avoid any
possible conflicts we recommend that you install a fresh Python environment
through either a full Anaconda installation or a (much) more lightweight
Miniconda installation. If you are very comfortable with Python and know how
to install packages without root privileges, you can jump directly to the packages
listed below and install them.

Follow these links for download and installation instructions:

- [Anaconda](https://docs.continuum.io/anaconda/install)
- [Miniconda](http://conda.pydata.org/docs/install/quick.html)

Note that it is best to install Anaconda/Miniconda into a directory in the home
folder, rather than in a system directory, and one should not `sudo` it. Also
note that Python 2 and Python 3 versions of Anaconda are conventionally installed
in folders anaconda2 and anaconda3, respectively (and similarly for Miniconda).

If you already have an Anaconda2 distribution installed, 
you don't need to install the full Anaconda3 distribution. 
Instead, you can create a separate Python3 conda environment under your Anaconda2 installation, 
as [described here](https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html#managing-python).

After installing Anaconda/Miniconda you can install the required packages
(listed below) via `conda install` (recommended) or `pip install`.

Anaconda/Miniconda prepends your PATH with `$HOME/anaconda3/bin` (or
`$HOME/miniconda3/bin`), assuming that `$HOME/anaconda3` is where you installed
Anaconda3, by adding lines to your `.bash_profile` file.
To verify your Anaconda/Miniconda installation, open a new terminal (or type
`source .bash_profile` in the terminal session in which you installed
Anaconda/Miniconda).

If you for some reason prefer not to install Anaconda/Miniconda, an alternative
is to use
[virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/). You
first need to install the virtualenv package into your root Python by:

```shell
$ sudo pip install virtualenv
```

Then create a virtual environment by:

```shell
$ virtualenv -p python3.6 venv
```

(replacing `python3.6` with the correct name of your preferred Python version if necessary)
and then type:

```shell
$ source venv/bin/activate
```

We do not recommend to install Python packages system-wide using the root account.


### Installing required packages

We will use the following Python packages in the CodeRefinery exercises:

- numpy
- matplotlib
- jupyter
- jupyterlab
- ipywidgets
- pandas
- seaborn
- sphinx
- pytest
- pycodestyle

If you have installed a new Python environment via Anaconda, you will already
have all these packages installed on your system.

If you installed Miniconda, you can install the required packages via the conda
package manager:

```shell
$ conda install <package-name>
```

If you're using virtualenv, and you have activated it with `source
$HOME/venv/bin/activate`, your `pip` should be the one located in
`$HOME/venv/bin/` and you can type

```shell
$ pip install <package-name>
```

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on Windows

Watch the [video tutorial](https://www.youtube.com/watch?v=xxQ0mzZ8UvA)
(copyright Software Carpentry).

- Open [http://continuum.io/downloads](http://continuum.io/downloads) with your web browser.
- Download the Python 3 installer for Windows.
- Install Python 3 using all of the defaults for installation except make sure to check
  `Make Anaconda the default Python`.

Anaconda contains almost all the required Python packages which will be used during the CodeRefinery workshop.



## How to verify the installation

In the command prompt, type:

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

