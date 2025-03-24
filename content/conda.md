# Conda environment

[this page is adapted from <https://aaltoscicomp.github.io/python-for-scicomp/installation/>]

You only need this if you wish to go through examples and exercises during the
second workshop week on your own computer.


## Choosing an installation method

For this course we will install an **isolated environment**
with following dependencies:
:::::{tabs}
  ::::{tab} environment.yml
    :::{literalinclude} software/environment.yml
    :language: yaml
    :::
  ::::

  ::::{tab} requirements.txt
    :::{literalinclude} software/requirements.txt
    :::
  ::::
:::::

:::{admonition} If you have a tool/method that works for you, keep using it
If you are used to installing Conda packages and know what to do with the
above files, please follow your own preferred installation
method.

**If you are new to Conda or unsure** how to create isolated environments from
files above, please follow the instructions below where we do this with the help
of Miniforge.

If you already use **Anaconda** to manage your software environments, please
continue using it. In this case you can skip {ref}`miniforge` and go directly to
{ref}`conda-environment`.
:::


:::{admonition} Why do we recommend Miniforge and how does it relate to Conda?
:class: dropdown

There are many choices and we try to suggest a good compromise
There are very many ways to install packages with pros and cons and
in addition there are several operating systems with their own quirks. This
can be a huge challenge for beginners to navigate. It can also difficult for
instructors to give recommendations for something which will work everywhere
and which everybody will like.

Below we will recommend **Miniforge** since it is free, open source, general,
available on all operating systems, and provides a good basis for reproducible
environments. However, it does not provide a graphical user interface during
installation.

But Miniforge is only one option. Unfortunately there are many options and a
lot of jargon.  Here is a crash course:

- **Conda** is a package manager: it allows distributing and
  installing packages, and is designed for complex scientific
  code.
- **Mamba** is a re-implementation of Conda to be much faster with
  resolving dependencies and installing things.
- An **environment** is a self-contained collections of packages
  which can be installed separately from others.  They are used so
  each project can install what it needs without affecting others.
- **Anaconda** is a commercial distribution of Python+Conda+many
  packages that all work together.  It used to be freely usable for
  research, but since ~2023-2024 it's more limited.  Thus, we don't
  recommend it (even though it has a nice graphical user interface).
- **conda-forge** is another channel of distributing packages that
  is maintained by the community, and thus can be used by anyone.
  (Anaconda's parent company also hosts conda-forge packages)
- **Miniforge** is the installer recommended by the conda-forge community. It operates via the command line.
- **Miniconda** is a distribution of conda pre-configured to use
  the Anaconda channels.
:::


(miniforge)=

## Installing Miniforge

Download the latest release from the [Miniforge download
overview](https://conda-forge.org/download/).  This installs the base, and from
here other packages can be installed.

Unsure what to download and what to do with it?
::::{tabs}
  :::{group-tab} Windows
  You want to download and run `Miniforge3-Windows-x86_64.exe`.
  :::

  :::{group-tab} MacOS
  You probably want to download the `Miniforge3-MacOSX-arm64.sh` file (unless
  you don't have an Arm processor) and then run it in the terminal with:
  ```console
  $ bash Miniforge3-MacOSX-arm64.sh
  ```
  :::

  :::{group-tab} Linux
  You probably want to download the `Miniforge3-Linux-x86_64.sh` file (unless
  you don't have an x86_64 processor) and then run it in the terminal with:
  ```console
  $ bash Miniforge3-Linux-x86_64.sh
  ```
  :::
::::


(conda-environment)=

## Installing the software environment

First we will start a command line environment in a way that activates
conda/mamba.  Then we will install the software environment from [this
environment.yml
file](https://raw.githubusercontent.com/coderefinery/software/main/environment.yml)
(this is the same file as on top of this page).

An **environment** is a self-contained set of extra libraries - different
projects can use different environments to not interfere with each other.  This
environment will have all of the software needed for this particular course.

We will call the environment `coderefinery`.

::::{tabs}
  :::{group-tab} Windows
  Use the "Miniforge Prompt" to start Miniforge.  This
  will set up everything so that ``conda`` and ``mamba`` are
  available.
  Then type
  (without the `$`):
  ```console
  $ curl "https://raw.githubusercontent.com/coderefinery/software/main/environment.yml" -o environment.yml 
  $ mamba env create -n coderefinery -f environment.yml
  ```
  :::

  :::{group-tab} Linux / MacOS
  Each time you start a new command line terminal,
  you can activate Miniforge by running
  (without the `$`):
  ```console
  $ source ~/miniforge3/bin/activate
  ```

  This is needed so that
  Miniforge is usable wherever you need, but doesn't affect any
  other software on your computer (this is not needed if you
  choose "Do you wish to update your shell profile to
  automatically initialize conda?", but then it will always be
  active).

  In the second step, we will install the software environment by first copying the definition file:
  ```console
  $ curl "https://raw.githubusercontent.com/coderefinery/software/main/environment.yml" -o environment.yml 
  $ mamba env create -n coderefinery -f environment.yml
  ```
  :::
::::


(activating-environment)=

## Activating the software environment

::::{tabs}
  :::{group-tab} Windows
  Start the Miniforge Prompt. Then type
  (without the `$`):
  ```console
  $ conda activate coderefinery
  $ jupyter-lab
  ```
  :::

  :::{group-tab} Linux / MacOS
  Start the terminal and in the terminal, type
  (without the `$`):
  ```console
  $ source ~/miniforge3/bin/activate
  $ conda activate coderefinery
  $ jupyter-lab
  ```
  :::
::::


## How to verify the environment

Make sure you are in the Miniforge prompt (Windows) or in a terminal (Linux/MacOS).

The following command should return a version number and not an error message:
```console
$ conda --version
```

Is the coderefinery environment installed?
```console
$ conda env list
```

Make sure it's activated ({ref}`activating-environment`).
Once activated, try the following commands.

You should see versions printed and not see errors (exact version numbers are not too important):
```console
$ jupyter-lab --version

4.1.2

```
```console
$ pytest --version

8.0.2
```

```console
$ sphinx-build --version

sphinx-build 7.2.6
```

```console
$ snakemake --version

8.5.3
```


## Removing the software environment

::::{tabs}
  :::{group-tab} Windows
  In the Miniforge Prompt, type
  (without the `$`):
  ```console
  $ conda env list
  $ conda env remove --name coderefinery
  $ conda env list
  ```
  :::

  :::{group-tab} Linux / MacOS
  In the terminal, type
  (without the `$`):
  ```console
  $ source ~/miniforge3/bin/activate
  $ conda env list
  $ conda env remove --name coderefinery
  $ conda env list
  ```
  :::
::::
