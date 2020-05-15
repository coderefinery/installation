---
layout: master
---

# Git

**Warning: Just installing git is not enough: you have to configure
it, too.  [See below](#how-to-verify-the-installation), otherwise you will start off behind!**

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

Follow the installation instructions below but do not forget to also
[configure Git](#configuring-git).

## Installation using Conda

Conda can be used to install Git on Linux, macOS and Windows computers. To install
Git without conda, please follow the instructions in the following sections.

To install Git with conda, you need to have installed Anaconda or Miniconda. 
Then you can install Git in one line in the Anaconda prompt (on Windows) 
or in a terminal (macOS and Linux):

```shell
$ conda install git
```

On Windows, this will guarantee that you can use both Git and Python and Anaconda scripts in the same
(conda) environment.

Please also [verify your installation](#how-to-verify-the-installation)
and [configure Git](#configuring-git).


## Specific Linux installation instructions

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

Please also [verify your installation](#how-to-verify-the-installation)
and [configure Git](#configuring-git).


## Specific macOS installation instructions

### OS X 10.9 and higher

Install Git for Mac by downloading and running the most recent "mavericks"
installer from
[this list](http://sourceforge.net/projects/git-osx-installer/files/).

After installing Git, there will not be anything in your `/Applications`
folder, as Git is a command line program.

Please also [verify your installation](#how-to-verify-the-installation)
and [configure Git](#configuring-git).


### Older versions of OS X (10.5-10.8)

Use the most recent available installer labelled "snow-leopard" available
[here](http://sourceforge.net/projects/git-osx-installer/files/).

Please also [verify your installation](#how-to-verify-the-installation)
and [configure Git](#configuring-git).


## Specific Windows installation instructions

### If you have installed Git Bash

In this case Git should be installed on your computer as part of the Bash installation.

Possible problem with this approach is that Git Bash does not see
the Python and Anaconda scripts. See also [the troubleshooting page](/installation/troubleshooting/).

Please also [verify your installation](#how-to-verify-the-installation)
and [configure Git](#configuring-git).



## How to verify the installation

Typing:

```shell
$ git clone https://github.com/coderefinery/recipe.git testing-git-clone
$ cd testing-git-clone
$ git log --oneline
```

You should see something like this:

```shell
40fbb90 (HEAD -> master, origin/master, origin/HEAD) draft a readme
dd4472c we should not forget to enjoy
2bb9bb4 add half an onion
2d79e7e adding ingredients and instructions
```

Please also check that you can access Git and Python in the same environment by
checking the versions of pytest and sphinx-build (not a problem if versions
differ a bit):

```shell
$ pytest --version

This is pytest version 5.2.1

$ sphinx-build --version

sphinx-build 2.2.0
```


## Configuring Git

**[Watch this is video
form](https://www.youtube.com/watch?v=WdDTp8NeHBs&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)**.
[If problems, watch this video about common problems](https://www.youtube.com/watch?v=B27pUBrWp5w&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg).

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

It is convenient to set also the default text editor to use with Git.
You can replace nano with vim, emacs or any other editor of your choice:
```shell
$ git config --global core.editor nano
```

If you are on Windows and want to use Notepad or Notepad++, you can configure this by providing the full path to the 
executable and optionally set some options. For example (adjust the path if needed, and note the quotation):
```shell
$ git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```

To see where this information is stored, use:
```shell
$ git config --list --show-origin
```


## Setting up SSH keys

[CodeRefinery video about ssh keys](https://www.youtube.com/watch?v=XCDg1mtaA5I&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg).

Using the SSH protocol, you can connect and authenticate to remote servers and
services. With SSH keys, you can connect to GitHub without supplying your
username or password at each visit.

If you are unsure about this, you can skip this part and authenticate with GitHub
using your username and password every time you will push changes to GitHub.

If you decide to set up SSH keys, follow [this
guide](https://help.github.com/articles/connecting-to-github-with-ssh/) to
connect to GitHub with SSH keys.
