---
title: Python
---

We recommend using Python version 2.7 for the exercises in the CodeRefinery
workshop, but if you have a strong preference for version 3.5 that will work as
well.  Although Python is likely already installed on your laptop, to avoid any
possible conflicts we recommend that you install a fresh Python environment
through either a full Anaconda installation or a (much) more lightweight
Miniconda installation. 

Follow these links for download and installation instructions:

- [Anaconda](https://docs.continuum.io/anaconda/install)
- [Miniconda](http://conda.pydata.org/docs/install/quick.html)

Note that it is best to install Anaconda/Miniconda into a directory in the home
folder, and do not install as Administrator. Also note that Python2 and Python3
versions of Anaconda are conventionally installed in folders anaconda2 and
anaconda3, respectively (and similarly for Miniconda). 


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
 
If you have installed a new Python environment via Anaconda, you will already
have all these packages installed on your system. 

If you installed Miniconda, you can install the required packages via the conda
package manager:

```shell
conda install <package-name>
```



### How to verify the installation

In the Command Prompt, type:

```shell
$ python --version
```
If your installation was successful, this should return something like

```shell
Python 2.7.12 :: Continuum Analytics, Inc.
```

To check if you can successfully import a specific package, you can type

```shell
python -c "import <package-name>"
```

and ascertain that you do not get an ImportError.

The Jupyter Notebook App can be launched by clicking on the Jupyter Notebook
icon installed by Anaconda in the start menu, or by typing on the Start -
Command Prompt:

```shell
jupyter notebook
```

and see if it opens up a new tab in your browser showing the Jupyter dashboard.
