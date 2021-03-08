---
layout: master
---

# Python

Although Python is likely already installed on your laptop, to avoid
any possible conflicts we strongly recommend that you install a fresh
Python version 3.5 or higher with a full Anaconda or a minimal
Miniconda installation for the exercises in the CodeRefinery workshop.

## Installation on Linux and macOS

You can choose either Anaconda (full installation with hundreds of
packages) or Miniconda (minimal installation where most packages need
to be installed by hand). Follow these links for download and
installation instructions:

- [Anaconda](https://docs.continuum.io/anaconda/install)
- [Miniconda](https://docs.conda.io/en/latest/miniconda.html)


Note that it is best to install Anaconda/Miniconda into a directory in
the home folder, rather than in a system directory, and one should not
`sudo` it.

Anaconda (Miniconda) prepends your PATH with `$HOME/anaconda3/bin`
(`$HOME/miniconda3/bin`), assuming that `$HOME/anaconda3`
(`$HOME/miniconda3`) is where you installed it, by adding lines to
your `.bash_profile` file.  
To verify your Anaconda/Miniconda
installation, open a new terminal and run `python`. Above the Python
prompt you should see "Anaconda" or "Miniconda". To exit Python press
`CTRL-d`.

If you install Anaconda you will already have the required `pytest`
package. If you installed Miniconda you need to install `pytest`
by running `conda install pytest`.

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on Windows

Watch the [video tutorial](https://www.youtube.com/watch?v=xxQ0mzZ8UvA)
(copyright Software Carpentry).

- Open <https://www.anaconda.com/products/individual>.
- Download the Python 3 installer for Windows.
- Install Python 3 using all of the defaults for installation except make sure to check
  `Make Anaconda the default Python`.

Anaconda contains the required Python packages which will be used
during the CodeRefinery workshop.  For installation of new packages,
the easiest is to launch [Anaconda
navigator](https://docs.anaconda.com/anaconda/navigator/) and install
packages through
[it](https://docs.anaconda.com/anaconda/navigator/tutorials/manage-packages/).

## How to verify the installation

Use git bash terminal (on Windows) or a regular terminal (MacOS and Linux) and type in the command prompt:

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

Now check that you can start pytest directly from the command
line (not a problem if versions differ a bit):

```shell
$ pytest --version

This is pytest version 5.2.1
```

Finally verify that you can run both Git and Python commands in the same environment.
This should not produce an error:

```shell
$ python --version
$ git --version
```
