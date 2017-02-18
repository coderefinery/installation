---
title: Compilers
---

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

Restart your computer.

### How to verify the installation in bash

```shell
$ gfortran --version
$ gcc --version
$ g++ --version
```
