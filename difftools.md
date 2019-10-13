---
layout: master
---

# Visual diff tools

Visual diff tools allow to visualize differences between files side by side.
They can be used independently of version control but when coupled with Git,
they can provide a nice alternative to command line output to show differences
between file versions or branches.


## Installation on Linux

Install meld via your distribution package manager. For Debian/Ubuntu run:

```shell
$ sudo apt-get install meld
```

For Fedora:

```shell
$ sudo dnf install meld
```

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on macOS

Meld is available for macOS but not officially supported yet, please follow
installation instructions from [http://meldmerge.org](http://meldmerge.org).

On macOS, there are other visual comparison tools. Please browse the net and
install your favourite one. Make sure they cooperate with Git since this often
makes comparison and conflict resolution easier.

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on Windows

Please follow installation instructions from [http://meldmerge.org](http://meldmerge.org).


## How to verify the installation

To test it create two files which are similar and then compare them
with Meld or Diffuse:

```shell
$ meld file1 file2
```
