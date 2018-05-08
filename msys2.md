---
layout: master
---

# MSYS2 (only relevant for Windows)

You can ignore everything below on Linux or macOS.

MSYS2 will provide us with a Bash terminal environment and a package manager
so that we can install packages directly from the command line. The advantage
will be that we get an environment and feel very similar to Linux or macOS.

To install MSYS2 follow the good and very brief guide on
[https://www.msys2.org](https://www.msys2.org).

Choose the "x86_64" version for 64-bit, "i686" for 32-bit Windows. And follow
the steps on
[https://www.msys2.org](https://www.msys2.org),
including the "pacman" commands
to update the package database and core system packages.

If you get these questions after typing `pacman -Syu`, you can answer "y":
```
:: msys2-runtime and catgets are in conflict. Remove cadgets? [y/N] y
:: msys2-runtime and libcatgets are in conflict. Remove cadgets? [y/N] y
```

It is no problem to run `pacman -Syu` several times. Once you see that no packages
get updates, you know that the installation is complete and up to date.
