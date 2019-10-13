---
layout: master
---

# Snakemake

The Snakemake workflow management tool requires Python version 3.4 or higher.
Detailed installation instructions can be found in 
[the Snakemake documentation](https://snakemake.readthedocs.io/en/v5.1.4/getting_started/installation.html).


## Installation on Linux, macOS, and Windows

In short, Snakemake can be installed either via the `snakemake` or 
the smaller (but sufficient) `snakemake-minimal` package.

On Windows, you *have* to use `snakemake-minimal`. On Linux and macOS
`snakemake-minimal` is enough unless you want to be able to plot dependency graphs.

To install one of these into a conda environment, type:

```shell 
$ conda install -c bioconda -c conda-forge snakemake
# or
$ conda install -c bioconda -c conda-forge snakemake-minimal
```

or, alternatively, if you prefer `pip` over `conda`:

```shell
$ pip3 install snakemake
# or
$ pip3 install snakemake-minimal
```

This may fail with an error message containing 
`Failed building wheel for datrie`.  
If this happens, it should work to install `datrie` first:
```shell
$ conda install datrie
```


## How to verify the installation

Verify that Snakemake is installed - this should not produce an error:

```shell
$ snakemake --version
```
