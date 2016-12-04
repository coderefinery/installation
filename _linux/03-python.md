---
title: Python
---

We recommend using Python version 2.7 for the exercises in the CodeRefinery workshop, but if you have 
a strong preference for version 3.5 that will work as well.
Although Python is likely already installed on your laptop, to avoid any possible 
conflicts we recommend that you install a fresh Python environment through 
either a full Anaconda installation or a (much) more lightweight Miniconda 
installation. 

Follow these links for download and installation instructions:

- [Anaconda](https://docs.continuum.io/anaconda/install)
- [Miniconda](http://conda.pydata.org/docs/install/quick.html)

Note that it is best to install Anaconda/Miniconda into a directory in the home folder, rather than in a system directory, and one should not `sudo` it. Also note that Python2 and Python3 versions of Anaconda are conventionally installed in folders anaconda2 and anaconda3, respectively (and similarly for Miniconda). 

If you for some reason prefer not to install Anaconda/Miniconda, an alternative is to use the virtualenv (virtual environment) tool, see the documentation [here](http://docs.python-guide.org/en/latest/dev/virtualenvs/). You first need to install the virtualenv package into your root python by:

```bash
sudo pip install virtualenv
```

Then create a virtual environment by:

```bash
virtualenv -p python2.7 venv
```

(replacing `python2.7` with the correct name of your python2.7 if necessary)
and then type

```bash
source venv/bin/activate
```

If you really want to install all packages we will use during the course in a system-wide fashion, even though this comes with a nonzero risk of conflicts arising, you can use your system's root `pip` command.


### Installing required packages

We will use the following Python packages in the CodeRefinery exercises:

- numpy
- scipy
- matplotlib
- pandas
- jupyter
- sphinx
- pytest
- pep8
 
If you have installed a new Python environment via Anaconda, you will already have all these packages installed on your system. 

If you installed Miniconda, you can install the required packages via the conda package manager:

```bash
conda install <package-name>
```

If you're using virtualenv, and you have activated it with `source $HOME/venv/bin/activate`, your `pip` should be the one located in `$HOME/venv/bin/` and you can type

```bash
pip install <package-name>
```

If you want to install system-wide, simply use the above command using your root `pip` version.


### How to verify the installation

Anaconda/Miniconda prepends your PATH with `$HOME/anaconda3/bin` (or `$HOME/miniconda2/bin`), assuming that `$HOME/anaconda2` is where you installed Anaconda2, by adding a line to your .bash_profile file. This means that you can test your Anaconda/Miniconda installation by opening a new terminal (or type `source .bash_profile` in the terminal session in which you installed Anaconda/Miniconda), and type:

```bash
$ python --version
```
If your installation was successful, this should return something like

```bash
Python 2.7.12 :: Continuum Analytics, Inc.
```

To check if you can successfully import a specific package, you can type

```bash
python -c "import <package-name>"
```

and ascertain that you do not get an ImportError.

To see whether Jupyter is working as it should, type the command

```bash
jupyter notebook
```

and see if it opens up a new tab in your browser showing the Jupyter dashboard.
