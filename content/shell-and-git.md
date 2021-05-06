(shell-and-git)=

# Shell and Git

```{note}
Installing Git is not enough, you must also configure it and verif the
configuration,
otherwise you will start off behind! Please trust us that this is
better verified before than during the workshop which we then cannot simply
pause.
```

In CodeRefinery workshops, we use Bash (Unix Shell). If you have never been in
a terminal shell, please briefly read this [crash
course](https://scicomp.aalto.fi/scicomp/shell/), and consider watching
[this shell tutorial video by Richard Darst](https://youtu.be/56p6xX0aToI) (20
min).

Git is a version control system that lets you track who made changes to what
and when, and has options for updating a shared or public version of your code
on source code repository hosting platforms such as
[GitHub](https://github.com) or [GitLab](https://gitlab.com) or
[Bitbucket](https://bitbucket.org/).

Please follow the installation, configuration and verification instructions below.


## Installation

`````{tabs}
  ````{tab} Windows

  You can follow the steps below by watching the
  [Carpentries video tutorial](https://www.youtube-nocookie.com/embed/339AEqk9c-8?modestbranding=1&playsinline=1&iv_load_policy=3&rel=0).

  - Download the [Git for Windows installer](https://gitforwindows.org/).
  - Run the installer and follow the steps below:
    1.  Click on "Next" four times (two times if you've previously
        installed Git).  You don't need to change anything
        in the Information, location, components, and start menu screens.
    2.  **From the dropdown menu select "Use the Nano editor by default"
        (NOTE: you will need to scroll <emph>up</emph> to find it) and click on "Next".**
    3.  On the page that says "Adjusting the name of the initial branch in new repositories", ensure that
        "Let Git decide" is selected. This will ensure the highest level of compatibility for our lessons.
    4.  Ensure that "Git from the command line and also from 3rd-party software" is selected and
        click on "Next". (If you don't do this Git Bash will not work properly, requiring you to
        remove the Git Bash installation, re-run the installer and to select the "Git from the
        command line and also from 3rd-party software" option.)
    5.  Ensure that "Use the native Windows Secure Channel Library" is selected and click on "Next".
    6.  Ensure that "Checkout Windows-style, commit Unix-style line endings" is selected and click on "Next".
    7.  **Ensure that "Use Windows' default console window" is selected and click on "Next".**
    8.  Ensure that "Default (fast-forward or merge) is selected and click "Next"
    9.  Ensure that "Git Credential Manager <strong>Core</strong>" is selected and click on "Next".
    10. Ensure that "Enable file system caching" is selected and click on "Next".
    11. Click on "Install".
    12. Click on "Finish" or "Next".
  - If your "HOME" environment variable is not set (or you don't know what this is):
    1.  Open command prompt (Open Start Menu then type `cmd` and press enter)
    2.  Type the following line into the command prompt window exactly as shown: `setx HOME "%USERPROFILE%"`
    3.  Press enter, you should see `SUCCESS: Specified value was saved.`
    4.  Quit command prompt by typing `exit` then pressing enter.

  This will provide you with both Git and Bash in the Git Bash program.

  *Text copied and adapted from: [the Carpentries set up page](https://carpentries.github.io/workshop-template/#shell)*
  ````

  ````{tab} macOS

  The default shell in some versions of macOS is Bash, and
  Bash is available in all versions, so **no need to install a shell**.

  You access Bash from the terminal (found in `/Applications/Utilities`.
  See the Git installation [Carpentries video tutorial](https://carpentries.github.io/workshop-template/#shell-macos-video-tutorial)
  for an example on how to open the terminal.
  You may want to keep the terminal in your dock for this workshop.

  To see if your default shell is Bash type `echo $SHELL`
  in the terminal and press the return key. If the message
  printed does not end with '/bash' then your default is something
  else and you can run Bash by typing `bash`. But also `zsh` will work
  fine for our workshop if this is your default shell.

  If you want to change your default shell, see [this Apple Support article](https://support.apple.com/en-au/HT208050)
  and follow the instructions on "How to change your default shell".

  **Install Git** for Mac
  by downloading and running the most recent "mavericks" installer from
  [this list](http://sourceforge.net/projects/git-osx-installer/files/).
  Because this installer is not signed by the developer, you may have to
  right click (control click) on the .pkg file, click Open, and click
  Open on the pop up window.
  After installing Git, there will not be anything in your `/Applications` folder,
  as Git is a command line program.
  See also the Git installation
  [Carpentries video tutorial](https://carpentries.github.io/workshop-template/#shell-macos-video-tutorial).

  For older versions of OS X (10.5-10.8), use the
  most recent available installer labelled "snow-leopard"
  [available here](http://sourceforge.net/projects/git-osx-installer/files/).

  *Text copied and adapted from: [the Carpentries set up page](https://carpentries.github.io/workshop-template/#shell)*
  ````

  ````{tab} Linux

  On a Linux system you already have a shell and the default shell is usually
  Bash and there is **no need to install a shell**. But you may **need to install Git**.
  If Git is not already available on your machine you can try to install it via
  your distribution package manager.

  For Debian/Ubuntu run:
  ```shell
  $ sudo apt-get install git
  ```

  For Fedora:
  ```shell
  $ sudo dnf install git
  ```

  *Reference: [the Carpentries set up page](https://carpentries.github.io/workshop-template/#shell)*
  ````
`````


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

**This name and email will be public on Github when you make
contributions, including in this course.**  If you prefer to not use a real email address but still want to make sure that
GitHub counts your contributions, you can use
`yourusername@users.noreply.github.com`.

This is important since your Git commits use this information.  The `--global`
option uses this information for every repository for this user on
this computer.


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
2.8.0 (from 2016) or greater only), use:
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

### Step 3: ssh keys for Github

This is handled two steps from now, in {doc}`ssh`, after you make a
Github account.



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
Write some text in the `example.txt`, save (`ctrl+O` then `ENTER`) and exit (`ctrl+X`).


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
