---
title: Make
---

For OS X, version 10.9 (Mavericks) or above, download the Command Line Tools by doing:

```
xcode-select  --install
```

For more information, see the [OSX Daily blog](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/).

If you have an older OS X version and you do not already have access to make from within your shell, you will need to install XCode (which is free, but over a gigabyte to download).

- Go to the Apple app store
- Search for XCode
- Click Free
- Click Install App

Once XCode has installed:

- Click Applications
- Click XCode
- Select XCode→Preferences...
- Click Downloads
- Select Command Line Tools
- Click Install

You will now be able to run make within your shell.


### How to verify the installation

This command should give you the version of the Make tool and not throw errors:

```shell
$ make --version
```
