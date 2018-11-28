---
layout: master
---

# Git

Git is a version control system that lets you track who made changes to what
when and has options for easily updating a shared or public version of your
code on source code repository hosting platforms such as
[GitHub](https://github.com) or [GitLab](https://gitlab.com) or
[Bitbucket](https://bitbucket.org/). You will need a supported web browser
(current versions of Chrome, Firefox, Safari, or Internet Explorer version 9 or
above).

You will need an account at [GitHub](https://github.com) for parts of the Git
lesson. Basic GitHub accounts are free. We recommend you to create a GitHub
account if you don't have one already. Please consider what personal
information you'd like to reveal. For example, you may want to review [these
instructions](https://help.github.com/articles/keeping-your-email-address-private/)
for keeping your email address private provided at GitHub.

If you do not wish to use [GitHub](https://github.com) and a corresponding
account, you can instead use your favourite source code repository hosting
platform. Most aspects of our material and exercises are transferable to all
popular platforms.

Follow the installation instructions below but do not forget to also configure Git (see below).


## Installation on Linux

If Git is not already available on your machine you can try to install it via
your distribution package manager. 

For Debian/Ubuntu run:

```shell
$ sudo apt-get install git
```

Check the version after installing:

```shell
$ git --version
```

For Fedora:

```shell
$ sudo dnf install git
```


## Installation on macOS

### OS X 10.9 and higher

Install Git for Mac by downloading and running the most recent "mavericks"
installer from
[this list](http://sourceforge.net/projects/git-osx-installer/files/).

After installing Git, there will not be anything in your `/Applications`
folder, as Git is a command line program.


### Older versions of OS X (10.5-10.8)

Use the most recent available installer labelled "snow-leopard" available
[here](http://sourceforge.net/projects/git-osx-installer/files/).


## Installation on Windows

Git should be installed on your computer as part of the Bash installation.


## How to verify the installation

Typing:

```shell
$ git --version
```

Should give you a version (like here) and not an error (do not worry if the
version is different on your system):

```shell
git version 2.10.2
```


## Configuring Git

After signing up for a GitHub account
and installing Git on your machine,
you should go through the following steps to configure Git.
First, the following commands will set your user name and email address:

```shell
$ git config --global user.name "Your Name"
$ git config --global user.email yourname@example.com
```

This is important since your Git commits use this information.
The `--global` option ensures that you do not need to enter this information again on your machine.

It is convenient to set also the default text editor to use with Git. This you
do with:
```shell
$ git config --global core.editor emacs
```
You can replace emacs with vim, nano or any other editor of your choice.

It is also useful to set the default push behavior.
We recommend the following option:
```shell
$ git config --global push.default current
```

Colors make it easier to inspect diffs and the staging area:
```shell
$ git config --global color.diff auto
$ git config --global color.status auto
$ git config --global color.branch auto
$ git config --global color.ui true
```

To see where this information is stored, use:
```shell
$ git config --list --show-origin
```


## Setting up SSH keys

Using the SSH protocol, you can connect and authenticate to remote servers and
services. With SSH keys, you can connect to GitHub without supplying your
username or password at each visit.

Follow [this guide](https://help.github.com/articles/connecting-to-github-with-ssh/) to connect
to GitHub with SSH keys.
