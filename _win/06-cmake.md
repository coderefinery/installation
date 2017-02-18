---
title: CMake
---

CMake is an open-source, cross-platform family of tools designed to build, test
and package software.

Install CMake following [this page](https://cmake.org/download/).

- Click on Download on top right of the above page.
- Click on latest stable release.
- Get 32 or 64 bit version msi file, install.

Add CMake to your user path variable:

- In control panel, search for "env", click on "Edit environmental variables
  for your account". In box for user variables, click PATH, click Edit ..., and
  add <location-of-make.exe> (probably `C:\Program Files\CMake\bin`) at the end
  of the variables value, separated from the previous entry by a semicolon.

Restart computer.

### How to verify the installation in bash

This command should give you the version of the CMake tool and not throw errors:

```shell
$ cmake --version
```
