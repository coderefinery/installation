(shell-and-git)=

# Shell and Git

```{note}
Installing Git without also configuring it and verifying configuration is not
enough, otherwise you will start off behind! Please trust us that this is
better verified before than during the workshop which we then cannot simply
pause.
```

In CodeRefinery workshops, we use Bash (Unix Shell). If you have never been in
a terminal shell, please briefly read this [crash
course](https://scicomp.aalto.fi/scicomp/shell.html), and consider watching
[this shell tutorial video by Richard Darst](https://youtu.be/56p6xX0aToI) (20
min).

Git is a version control system that lets you track who made changes to what
and when, and has options for updating a shared or public version of your code
on source code repository hosting platforms such as
[GitHub](https://github.com) or [GitLab](https://gitlab.com) or
[Bitbucket](https://bitbucket.org/).

Follow the installation, configuration and verification instructions below.


## Installation

Please refer to [the Carpentries set up
page](https://carpentries.github.io/workshop-template/#shell) about **The Bash
Shell** and then **Git** for your OS.


## Configuration

```{prereq}
We assume that you have:
- Signed up for a GitHub account
- Bash (or Zsh on macOS) shell terminal on your machine
- Git installed on your machine
- Nano editor available (unless you prefer a different terminal editor)
```


### Video instruction

[This video (9
min)](https://www.youtube.com/watch?v=WdDTp8NeHBs&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)
shows how to configure git, so first watch this.  If you experience problems,
watch [this troubleshooting
video](https://www.youtube.com/watch?v=B27pUBrWp5w&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg).

The following shows the same steps that are shown in the video above.


### Step 1: Setting user name and email

First, the following commands will set your user name and email address:
```shell
$ git config --global user.name "Your Name"
$ git config --global user.email yourname@example.com
```

If you are unsure which email to use, use the one that you have registered at
GitHub with.

If you prefer to not use a real email address but still want to make sure that
GitHub counts your contributions, you can use
`yourusername@users.noreply.github.com`.

This is important since your Git commits use this information.  The `--global`
option ensures that you do not need to enter this information again on your
machine.


### Step 2: Setting an editor

It is important to set also the default text editor to use with Git.  **We
recommend to use nano**, but you can replace nano with vim, emacs or any other
editor of your choice:
```shell
$ git config --global core.editor nano
```

If you use Atom as editor, set:
```shell
$ git config --global core.editor "atom -nw"
```

To see where this information is stored (`--show-origin` works on git version
2.8.0 or greater only), use:
```shell
$ git config --list --show-origin
```

(Optional) If you are on Windows and want to use Notepad or Notepad++, you can
configure this by providing the full path to the executable and optionally set
some options. For example (adjust the path if needed, and note the quotation):
```shell
$ git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```

[This page](https://swcarpentry.github.io/git-novice/02-setup/index.html)
contains a nice summary on how to configure Git with many other editors.


## Verification

```{prereq}
We assume that you have:
- Bash (or Zsh on macOS) shell terminal on your machine
- Git installed and configured, with `nano` as its editor on your machine
  (unless you prefer a different terminal text editor)
```

The following shows the same steps that are shown in the video above.  You can
see verification part in [the same video for configuration at
5:50](https://www.youtube.com/watch?v=WdDTp8NeHBs&t=350s).


### Step 1: `git init` a new folder

Create a new example folder, step into it, and initialize a repository **(don't
`git init` in your home directory)**:
```shell
$ mkdir example
$ cd example
$ git init
```

### Step 2: Make a new file.

Make a new file with some content:
```shell
$ nano example.txt
```
Write some text in the `example.txt`, save (`ctrl+O`) and exit (`ctrl+X`).


### Step 3: Stage the change

Stage a newly made file `example.txt` before committing the change and record in
Git:
```shell
$ git add example.txt
```


### Step 4: Commit the change with a message

The following command will commit the change. This should open the editor which
you have configured. There add an example commit message:
```shell
$ git commit example.txt
```

### Step 5: See the change log

```shell
$ git log
```

If you see now something line this (different name, email, and commit message),
your Git is configured for the workshop:
```text
commit 12e4cb892140bd14a413895b3b36c27db198eb22 (HEAD -> master)
Author: Radovan Bast <bast@users.noreply.github.com>
Date:   Fri May 15 16:41:13 2020 +0200

    making a test commit
```


## Troubleshooting

### On Windows `git log`, `git diff`, `git branch` or other git commands show no output at all

It seems this can be fixed by these configuration settings:
```
$ git config --global pager.log off
$ git config --global pager.diff off
$ git config --global pager.show off
$ git config --global pager.config off
$ git config --global pager.stash off
$ git config --global pager.help off
$ git config --global pager.blame off
$ git config --global pager.branch off
$ git config --global pager.annotate off
```

Following other manuals and documentation, it seems that all the above can be set with the following
(`cat` should be available within Git Bash but also PowerShell):
```
$ git config --global core.pager cat
```
