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
```

However, snakemake has non-python dependencies, so a pip-based
installation has limited functionality unless these dependencies
are manually installed.

If your installation fails with:
`Failed building wheel for datrie`.  
it should work to install `datrie` first:
```shell
$ conda install datrie
```

Conda may be slow to resolve the dependencies and sometimes fails 
to select a recent release of snakemake. If installing snakemake with 
conda is taking very long, or if it installs an old version (below 5.0),
a solution can be to use `mamba`:
```shell
$ conda uninstall snakemake # to remove a pre-5.0 version of snakemake
$ conda install -c conda-forge mamba
$ mamba install -c conda-forge -c bioconda snakemake
```

For further details, see the latest 
[installation instructions](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html).

## How to verify the installation

Verify that Snakemake is installed - this should not produce an error:

```shell
$ snakemake --version
```
