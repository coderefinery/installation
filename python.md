---
layout: master
---

# Python

We recommend using Python version 2.7 for the exercises in the CodeRefinery
workshop, but if you have a strong preference for version 3.5 that will work as
well.


## Installation on Linux and Mac OS X

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

After installing Anaconda/Miniconda you can install the required packages
(listed below) via `conda install` (recommended) or `pip install`.

If you for some reason prefer not to install Anaconda/Miniconda, an alternative
is to use
[virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/). You
first need to install the virtualenv package into your root Python by:

```shell
$ sudo pip install virtualenv
```

Then create a virtual environment by:

```shell
$ virtualenv -p python2.7 venv
```

(replacing `python2.7` with the correct name of your preferred Python version if necessary)
and then type:

```shell
$ source venv/bin/activate
```

We do not recommend to install Python packages system-wide using the root account.


### Installing required packages

We will use the following Python packages in the CodeRefinery exercises:

- numpy
- scipy
- matplotlib
- jupyter
- pandas
- seaborn
- cython
- numba
- sphinx
- pytest
- pep8
- cffi

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


### Jupyter

Jupyter can be installed according to the instructions given above.
If you did not install Python through Anaconda, and if you installed Jupyter 
using `pip` and not `conda`, you will need to execute this command in a terminal in order to 
activate widgets in Jupyter:

```shell
$ jupyter nbextension enable --py widgetsnbextension
```

Python will be the main language used during the CodeRefinery workshop, but if
you are an R developer and want to experiment with using R in Jupyter, install the
`r-essentials` package via

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

To see whether Jupyter is working as expected, type the command

```shell
$ jupyter notebook
```

and see if it opens up a new tab in your browser showing the Jupyter dashboard.

### How to verify the installation

Anaconda/Miniconda prepends your PATH with `$HOME/anaconda2/bin` (or
`$HOME/miniconda2/bin`), assuming that `$HOME/anaconda2` is where you installed
Anaconda2, by adding a line to your .bash_profile file. This means that you can
test your Anaconda/Miniconda installation by opening a new terminal (or type
`source .bash_profile` in the terminal session in which you installed
Anaconda/Miniconda), and type:

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


## Installation on Windows

Watch the [video tutorial](https://www.youtube.com/watch?v=xxQ0mzZ8UvA)
(copyright Software Carpentry).

- Open [http://continuum.io/downloads](http://continuum.io/downloads) with your web browser.
- Download the Python 2 installer for Windows.
- Install Python 2 using all of the defaults for installation except make sure to check
  `Make Anaconda the default Python`.

Anaconda contains almost all the required Python packages which will be used during the CodeRefinery workshop.


### Jupyter

Jupyter can be installed according to the instructions given above.
If you did not install Python through Anaconda, and if you installed Jupyter 
using `pip` and not `conda`, you will need to execute this command in a terminal in order to 
activate widgets in Jupyter:

```shell
$ jupyter nbextension enable --py widgetsnbextension
```

Python will be the main language used during the CodeRefinery workshop, but if
you are an R developer and want to experiment with using R in Jupyter, install the
`r-essentials` package via

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

The Jupyter Notebook App can be launched by clicking on the Jupyter Notebook
icon installed by Anaconda in the start menu.
Verify that it opens up a new tab in your browser showing the Jupyter dashboard.

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

