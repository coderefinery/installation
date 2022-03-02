# Make


## Installation on Linux

Make is a standard tool on Linux systems and should already be available.
If not, install make using your default distribution package manager.
For Debian/Ubuntu run:

```shell
$ sudo apt-get install build-essential
```

For Fedora:

```shell
$ sudo dnf install make
```

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on macOS

For OS X, version 10.9 (Mavericks) or above, download the Command Line Tools by doing:

```
$ xcode-select --install
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

Please also [verify your installation](#how-to-verify-the-installation).


## Installation on Windows

Get make:

- Go to [http://gnuwin32.sourceforge.net/](http://gnuwin32.sourceforge.net/) and click on the "Packages" link in the left side bar under "Download".
- Download and install make.

Add make to your user path variable:

- In control panel, search for "env", click on "Edit environmental variables for your account". In box for user variables, click PATH, click Edit ..., and add <location-of-make.exe> (probably `C:\Program Files (x86)\GnuWin32\bin`) at the end of the variables value, separated from the previous entry by a semicolon.

Restart the computer.


## How to verify the installation

This command should give you the version of the Make tool and not throw errors:

```shell
$ make --version
```
