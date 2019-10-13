---
layout: master
---

# Visual diff tools

Visual diff tools allow to visualize differences between files side by side.
They can be used independently of version control but when coupled with Git,
they can provide a nice alternative to command line output to show differences
between file versions or branches.


## Installation of meld on Linux

On Linux we recommend the program [meld](https://meldmerge.org).
Install meld via your distribution package manager. For Debian/Ubuntu run:

```shell
$ sudo apt-get install meld
```

For Fedora:

```shell
$ sudo dnf install meld
```

This is how you can configure Git to open Meld when doing `git difftool`:

```shell
$ git config --global diff.tool meld
```

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on macOS

For macOS we recommend to use Opendiff. You can install it following [this blog post](https://borgs.cybrilla.com/tils/opendiff-as-difftool/).
Please also [verify your installation](#how-to-verify-the-installation).


## Installation of Meld on Windows

On Linux we recommend the program [meld](https://meldmerge.org).
Please follow installation instructions from [http://meldmerge.org](http://meldmerge.org).

This is how you can configure Git to open Meld when doing `git difftool`:

```shell
$ git config --global diff.tool meld
```


## How to verify the installation

To test it create two text files which are similar and then compare them
with Meld or Diffuse:

```shell
$ meld file1 file2
```

You should now see both versions side by side.
