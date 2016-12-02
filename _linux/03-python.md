---
title: Python
---

Either Python versions 2.7 or 3.5 can be used in the exercises in the CodeRefinery workshops.
Python is likely already installed on your laptop, but to avoid any possible 
conflicts we recommend that you install a fresh Python environment through 
either a full Anaconda installation or a (much) more lightweight Miniconda 
installation. 

Follow these links for download and installation instructions:

- [Anaconda](https://docs.continuum.io/anaconda/install)
- [Miniconda](http://conda.pydata.org/docs/install/quick.html)

Note that it is best to install Anaconda/Miniconda into a directory in the home folder, rather than in a system directory, and one should not `sudo` it. Also note that Python2 and Python3 versions of Anaconda (and Miniconda) are conventionally installed in folders anaconda2 and anaconda3, respectively. 

If you for some reason prefer not to install Anaconda/Miniconda, an alternative is to use the venv (virtual environment) tool, see the documentation [here](http://docs.python-guide.org/en/latest/dev/virtualenvs/).

If you really want to install all packages we will use during the course in a system-wide fashion, even though this comes with a nonzero risk of conflicts arising, you can use pip.



### How to verify the installation

Anaconda/Miniconda prepends your PATH with $HOME/anaconda3/bin (or $HOME/miniconda3/bin), assuming that $HOME/anaconda3 is where you installed Anaconda3, by adding a line to your .bash_profile file. This means that you can test your Anaconda/Miniconda installation by opening a new terminal (or type `source .bash_profile` in the terminal session in which you installed Anaconda/Miniconda), and type:

```bash
$ python --version
```
If your installation was successful, this should return something like

```bash
Python 3.5.2 :: Continuum Analytics, Inc.
```
