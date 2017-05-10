---
title: CMake
---

CMake is an open-source, cross-platform family of tools designed to build, test
and package software.

Install CMake following [this page](https://cmake.org/download/).

Launch CMake from the Launchpad or Spotlight. Make sure to enable "Allow apps dowloaded from : Anywhere" under the "System Preferences" > "Security & Privacy".

Add CMake to path. From the "Tools" menu select "How to Install For Command Line Use". From the dialog that pops up, note the cmake-gui path (in this example: /Applications/CMake.app/Contents/bin/cmake-gui) and execute it in the terminal.


### How to verify the installation

This command should give you the version of the CMake tool and not throw errors:

```shell
$ cmake --version
```

[Source](http://tudat.tudelft.nl/projects/tudat/wiki/Install_on_Mac_OS_X) for troubleshooting.
