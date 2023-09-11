(conda)=

# Miniconda

Miniconda (and Anaconda, too) comes with a complete Python distribution that lets
you create **isolated environments** that don't affect anything else and
`conda` is the tool that manages these environments.

We have tried to collect all tools and libraries which we will use and
demonstrate during a CodeRefinery workshop into an `environment.yml` file so
that you can create a new and independent environment with all the necessary
packages so that it will not affect what you use for your daily programming or
projects. This is described as separate step: {ref}`conda-environment`.

```{admonition} Is Anaconda also OK?

Anaconda is more convenient at the beginning since it provides most packages
out of the box. However, in the long term we recommend to have a minimal base
system and install packages into project-specific environments, and for this,
Miniconda is a better choice. For our workshops we therefore recommend
Miniconda to prepare you for the long term and to start with good practices
right from the start. Another benefit is the smaller install size and time.
Buf if you have Anaconda already, this will also work.
```

## Installing Miniconda

### If you don't have Miniconda or Anaconda at all

- From the [Miniconda installer page](https://docs.conda.io/en/latest/miniconda.html),
  download Miniconda3 installer with the latest Python version.
- Follow [regular installation instructions](https://conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation)
  for your operating system.
- Make sure selecting:
    - "Installing just for you"
    - "Add miniconda3 to my PATH environment variable"
    - "Register Miniconda3 as my default Python 3.9"


### If you have Anaconda and you are using it regularly

You can use your existing Anaconda installation and inside follow: {ref}`conda-environment`.

Or, you can probably go through most of the workshop and most of the
packages that we will need already are part of Anaconda. If some package is
missing, you can then fetch it with the Anaconda Navigator. One disadvantage of
using Anaconda is however, that you are more likely to install everything into
the base environment whereas the Miniconda approach suggests to use more
isolated environments without modifying your base environment.


(setting-conda-path)=

## Setting path to Conda from your terminal shell

In CodeRefinery workshops, we need the Bash/Zsh shell terminal to be able to "see" and
run a couple of conda-installed tools and libraries.

```{prereq}
- You have Bash/Zsh and relatively new version of Conda installed in your computer.
- You get an error message like `conda command not found` whey you type `conda --version` in your shell terminal.
- After opening a new terminal and typing `conda --help` you still get `conda command not found`.
```

`````{tabs}
  ````{tab} Windows

  1. Go to the Miniconda3 (or if you have a relatively new Anaconda, then
     Anaconda3) folder. You can find it by serching from File Explorer search
     bar.
  2. Navigate to `etc` folder, and then to `profile.d` folder. You will find
     the `conda.sh` file.
  3. In the folder, right click and choose "Git Bash Here". You should be able
     to see the path to this folder in the Git Bash (something like
     ~/Miniconda3/etc/profile.d).
  4. Run the following command (type the following and enter):
     ```console
     $ echo ". '${PWD}'/conda.sh" >> ~/.bashrc
     ```
  5. Close Git Bash and reopen it.
  6. Verify that now Git Bash can "see" conda by running `conda --version`

  After step 5 you may see this warning but this is nothing to worry about and will
  not show up the next time you open Git Bash:
  ```
  WARNING: Found ~/.bashrc but no ~/.bash_profile, ~/.bash_login or ~/.profile.

  This looks like an incorrect setup.
  A ~/.bash_profile that loads ~/.bashrc will be created for you.
  ```

  *Reference: ["Setting Up Conda in Git Bash", Sep 2020, at Codecademy
  Forums](https://discuss.codecademy.com/t/setting-up-conda-in-git-bash/534473)*
  ````

  ````{tab} macOS

  1. Open a terminal window.
  2. Find the `.zshrc` file (or `.bash_profile` if your shell is Bash)
     which should be located in your home directory
     (/User/your-user-name)
  3. Navigate to the directory where `.zshrc` is located (or `.bash_profile` if your shell is Bash).
  4. Add the following in `.zshrc` file (or `.bash_profile`):
     ```console
     $ export PATH="$HOME/miniconda3/bin:$PATH"
     ```
  5. Restart the terminal to take configuration into use.
  ````

  ````{tab} Linux

  1. Open a terminal window.
  2. Run this command which will append to your `.bashrc` file (adapt the path if Miniconda has been installed
     to a different place):
     ```console
     $ echo 'source $HOME/miniconda3/bin/activate' >> ~/.bashrc
     ```
  3. Restart the terminal to take the configuration into use.

  If you prefer not to edit your `.bashrc`, you can also run this command after opening your terminal (each time you open one)
  and it will bring all `conda` commands "into view":
  ```console
  $ source $HOME/miniconda3/bin/activate
  ```
  ````
`````


(setting-conda-path-verification)=

## Conda path verification

The following command should return a version number in the terminal you plan
on using.

```console
$ conda --version
```
