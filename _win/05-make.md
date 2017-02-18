---
title: Make
---

Get make:

- Go to http://gnuwin32.sourceforge.net/install.html and click on "Package List" link in the Installation section.
- Download and install make.

Add make to your user path variable:

- In control panel, search for "env", click on "Edit environmental variables for your account". In box for user variables, click PATH, click Edit ..., and add <location-of-make.exe> (probably `C:\Program Files (x86)\GnuWin32\bin`) at the end of the variables value, separated from the previous entry by a semicolon.

Restart computer.

### How to verify the installation in bash

This command should give you the version of the Make tool and not throw errors:

```shell
$ make --version
```
