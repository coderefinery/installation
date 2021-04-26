(conda)=

# Miniconda or Anaconda

We have tried to collect all tools and libraries which we will use and
demonstrate during a CodeRefinery workshop into an `environment.yml` file so
that you can create a new and independent environment with all the necessary
packages so that it will not affect what you use for your daily programming or
projects. This comes at the last step ({ref}`conda-environment`).

To enable creating the environment mentioned above, we need you to have a
relatively new version of Conda.


## Installing Miniconda

### If you don't have Miniconda3 or Anaconda3 at all

- From the [Miniconda installer page](https://docs.conda.io/en/latest/miniconda.html),
  download Miniconda3 installer with the latest Python version.
- Follow [regular installation instructions](https://conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation)
  of your operating system.
- Make sure selecting:
    - installing just for you
    - "Add miniconda3 to my PATH environment variable"
    - "Register Miniconda3 as my default Python 3.9"


### If you have Miniconda or Anaconda but you have not used it for a long time

- If you have only old Anaconda, but not Miniconda, then install Miniconda3
  following the instruction above.
- If you have old Miniconda (no matter if you have Anaconda or not), follow the
  instruction below and upgrade Conda. Please replace `anaconda` with `conda`
  in the instruction for Windows and macOS:
    - [Windows](https://docs.conda.io/projects/continuumio-conda/en/latest/user-guide/install/windows.html#updating-conda)
    - [Mac OS](https://docs.conda.io/projects/continuumio-conda/en/latest/user-guide/install/macos.html#updating-anaconda-or-miniconda)
    - [Linux](https://docs.conda.io/projects/continuumio-conda/en/latest/user-guide/install/linux.html#updating-anaconda-or-miniconda)


(setting-conda-path)=

## Setting path to Conda from your terminal shell

In CodeRefinery workshops, we need the Bash/Zsh shell terminal to be able to "see" and
run a couple of conda-installed tools and libraries.

```{prereq}
- You have Bash and relatively new version of Conda installed in your computer.
- You get an error message like `conda command not found` whey you type `conda --version` in your shell terminal.
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
  ```shell
  $ echo ". '${PWD}'/conda.sh" >> ~/.bashrc
  ```
  5. Close Git Bash and reopen it.
  6. Verify that now Git Bash can "see" conda by running `conda --version`

  *Reference: ["Setting Up Conda in Git Bash", Sep 2020, at Codecademy
  Forums](https://discuss.codecademy.com/t/setting-up-conda-in-git-bash/534473)*
  ````

  ````{tab} macOS

  1. Open a terminal window.
  2. Find the .zshrc file which should be located in your home directory
     (/User/your-user-name)
  3. Navigate to the directory where .zshrc is located.
  4. Add the following in .zshrc file:
  ```shell
  export PATH="$HOME/miniconda3/bin:$PATH"
  ```
  ````

  ````{tab} Linux

  Work in progress ...
  ````
`````


## How to uninstall/remove Conda

We need to document this ...
