---
layout: master
---

# Compilers

## Installation on Linux

Install gfortran, gcc, and g++ using your default distribution package manager.
For Debian/Ubuntu run:

```shell
$ sudo apt-get install gfortran gcc g++
```

For Fedora:

```shell
$ sudo dnf install gfortran gcc g++
```


## Installation on Mac OS X

To install compilers on Mac OSX you should install Apple's Xcode software.
Very good instructions for doing this can be found
[on this website](https://wiki.helsinki.fi/display/HUGG/GNU+compiler+install+on+Mac+OS+X).


## Installation on Windows

Get your compilers from [MinGW](http://www.mingw.org):
- Click "Download Installer" button on the top right.
- Download `mingw-get-setup.exe`.
- Install.

Then:

- Open MinGW installer GUI.
- In Basic Setup, activate check boxes mingw32-base, mingw32-gcc-fortran, and mingw32-gcc-g++.
- Click on Installation menu, then "Apply changes". This will install the compilers.

Add MinGW to your user path variable:

- In control panel, search for "env", click on "Edit environmental variables for your account".
- In box for user variables, click PATH, click Edit ..., and add `\bin` (probably `C:\MinGW\bin`) at the end of the variables value, separated from the previous entry by a semicolon.

Finally, restart your computer.


## How to verify the installation

These commands should give you the compiler versions and not throw errors:

```shell
$ gfortran --version
$ gcc --version
$ g++ --version
```
