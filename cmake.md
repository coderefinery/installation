---
layout: master
---

# CMake

CMake is an open-source, cross-platform family of tools designed to build, test
and package software.


## Installation on Linux

Install CMake using your default distribution package manager.
For Debian/Ubuntu run:

```shell
$ sudo apt-get install cmake
```

For Fedora:

```shell
$ sudo dnf install cmake
```


## Installation on macOS

Install CMake following [this page](https://cmake.org/download/).

Launch CMake from the Launchpad or Spotlight. Make sure to enable "Allow apps
dowloaded from : Anywhere" under the "System Preferences" > "Security &
Privacy".

Add CMake to path. From the "Tools" menu select "How to Install For Command
Line Use". From the dialog that pops up, note the cmake-gui path (in this
example: /Applications/CMake.app/Contents/bin/cmake-gui) and execute it in the
terminal.


## Installation on Windows

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


## How to verify the installation

This command should give you the version of the CMake tool and not throw errors:

```shell
$ cmake --version
```
