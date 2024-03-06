(git-in-terminal)=

# Git in the terminal

This page is for setting up Git **if you want to use it in a terminal**.

If you have never been in
a terminal shell, please briefly read this [crash
course](https://scicomp.aalto.fi/scicomp/shell/), and consider watching
[this shell tutorial video by Richard Darst](https://youtu.be/56p6xX0aToI) (20
min).

Git is a version control system that lets you track who made changes to what
and when, and has options for updating a shared or public version of your code
on source code repository hosting platforms such as
[GitHub](https://github.com) or [GitLab](https://gitlab.com) or
[Bitbucket](https://bitbucket.org/).

Please follow the installation, configuration, and verification instructions below.


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
        (NOTE: you will need to scroll <emph>up</emph> to find it) and
        click on "Next".**  If are comfortable with another editor and know it is
        installed, you can select it - but Nano is the safest if you
        don't know what to choose.  This replaces the "selecting an
        editor" step below.
    3.  **On the page that says "Adjusting the name of the initial branch in new repositories", choose
        "Override the default branch name for new repositories" and choose `main`. This will ensure
        the highest level of compatibility for our lessons.**
    4.  Ensure that "Git from the command line and also from 3rd-party software" is selected and
        click on "Next". (If you don't do this Git Bash will not work properly, requiring you to
        remove the Git Bash installation, re-run the installer and to select the "Git from the
        command line and also from 3rd-party software" option.)
    4.  Choosing the OpenSSH executable: "Use bundled OpenSSH" and
        click "Next".
    5.  **Ensure that "Use the native Windows Secure Channel Library" is selected and click on "Next".**
    6.  Ensure that "Checkout Windows-style, commit Unix-style line endings" is selected and click on "Next".
    7.  **Ensure that "Use Windows' default console window" is selected and click on "Next".**
    8.  Ensure that "Default (fast-forward or merge) is selected and click "Next"
    9.  Ensure that "Git Credential Manager" is selected and click on
        "Next". (if "Core" is an option, pick that)

    10. Ensure that "Enable file system caching" is selected and click on "Next".
    11. Configuring experimental options: don't select either and
        click "Next".

    11. Click on "Install".
    12. Click on "Finish" or "Next".
  - If your "HOME" environment variable is not set (or you don't know what this is):
    1.  Open command prompt (Open Start Menu then type `cmd` and press enter)
    2.  Type the following line into the command prompt window exactly as shown: `setx HOME "%USERPROFILE%"`
    3.  Press enter, you should see `SUCCESS: Specified value was saved.`
    4.  Quit command prompt by typing `exit` then pressing enter.
  - If you are using a Windows laptop managed by your organization, it might be that your "HOME" variable is
    pointing to a network disk (a storage location that is not physically in your laptop, usually starting with
    "Z:\"). This should not be an issue per se, but it has caused problems to some participants in the past.
    If you are experiencing issues with Git Bash, you can try setting HOME to a location on the physical disk,
    for example "C:\Users\$USERNAME". Please note that, depending on the settings of your organisation, automatic
    backups might not cover the newly set home folder. Follow instructions from your local ITs on how to make sure
    that also those folders are backed up.   

  This will provide you with both Git and Bash in the Git Bash program. You can then start it by searching for "Git Bash" in your Start menu.

  *Text copied and adapted from: [the Carpentries set up page](https://carpentries.github.io/workshop-template/#shell)*
  ````

  ````{tab} macOS

  Starting with macOS Catalina, macOS uses zsh as the default login shell and
  interactive shell.  Bash is the default shell in macOS Mojave and earlier.

  **The workshop will work fine with either zsh or bash**.  If you experience
  that any of our exercises do not work with zsh, you can switch to bash by
  typing `bash` followed by Enter in your terminal.

  If you want to change your default shell, see [this Apple Support
  article](https://support.apple.com/en-au/HT208050) and follow the
  instructions on "How to change your default shell".

  **Check if git is already installed.**  Xcode may have already
  installed it.  If the command `which git` from a terminal returns
  something such as `/usr/bin/git` (it doesn't matter exactly what it
  says), then git is probably already installed.  If so, run `git
  --version` and if it reports 2.28 or higher, then you are good -
  proceed to configuration.


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
  ```console
  $ sudo apt-get install git
  ```

  For Fedora:
  ```console
  $ sudo dnf install git
  ```

  *Reference: [the Carpentries set up page](https://carpentries.github.io/workshop-template/#shell)*
  ````
`````

---

(git-configuration)=

## Configuration

```{prereq}
We assume that you have:
- Bash (or Zsh on macOS) shell terminal on your machine
- Git installed on your machine
- Nano editor available (unless you prefer a different terminal editor)
```


### Video instruction

[This video (9
min)](https://www.youtube.com/watch?v=WdDTp8NeHBs&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)
shows how to configure Git. If you experience problems,
watch [this troubleshooting
video](https://www.youtube.com/watch?v=B27pUBrWp5w&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg).

### Step 0: Start your terminal that has git
`````{tabs}
  ````{tab} Windows
  Start the application Git Bash.
  ````
  ````{tab} macOS
  Start the application Terminal.
  ````
  ````{tab} Linux
  Start the application Terminal.
  ````
`````

This is the command line interface.  Did you read/watch the crash
course above?


### Step 1: Setting user name and email

First, the following commands will set your user name and email address:
```console
$ git config --global user.name "Your Name"
$ git config --global user.email yourname@example.com
```

If you are unsure which email to use, use the one that you have registered at
GitHub with.

**This name and email will be public on GitHub when you make
contributions, including in this course.**  If you prefer to not use a real email address but still want to make sure that
GitHub counts your contributions, you can use
`yourusername@users.noreply.github.com` (replace `yourusername`).

This is important since your Git commits use this information.  The `--global`
option uses this information for every repository for this user on
this computer.

```{admonition} Different name/emails for different repositories
:class: dropdown

If you need different name/email for different
repositories see [this StackOverflow question
for configuring based on
directory](https://stackoverflow.com/questions/4220416/can-i-specify-multiple-users-for-myself-in-gitconfig)
and [the raw configuration
options](https://git-scm.com/docs/git-config#_includes), including
something that works based on remote URLs (but it needs a newer
git version).
```


### Step 2: Setting an editor

It is important to set also the default text editor to use with Git.  **We
recommend to use nano if you do not have any other preferences** (it
is included and simple for demonstrations).  But
you can instead use your preferred editor (VScode, vim, emacs or
any other editor of your choice, see {doc}`editors` for more instructions):

This sets the editor to Nano:

```console
$ git config --global core.editor nano
```

To set other editors, see {doc}`editors`.



### Step 3: Set default branch

The default branch on GitHub and GitLab is `main` but it used to be `master`.
In our workshop we will use `main` as the default branch also in the terminal
to be consistent with GitHub and GitLab:

```console
$ git config --global init.defaultbranch main
```

This configuration will unfortunately have no effect on Git older than 2.28.
**But this is not a problem**. During the lesson we will have a workaround for
this.


### Step 4: Two more settings for Windows only

We have found that these two settings prevent warnings and/or seeing no output
in some commands on Windows (no need to run these on macOS or Linux).  At the
bottom of this page we motivate in more detail what these two do:

```console
$ git config --global core.autocrlf false
$ git config --global core.pager cat
```

---

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


### Step 1: Check your Git version

Check your git version:
```console
$ git --version

git version 2.39.2
```

- We recommend at least 2.23.
- Ideal is 2.28 and newer.
- But the lesson and workshop will still work even with Git 2.0
  and we will add instructions/workarounds for Git below 2.28 or 2.23.


### Step 2: `git init -b main` inside a new folder

Create a new example folder, step into it, and initialize a repository. Do **not**
`git init -b main` in your home directory:
```console
$ mkdir example
$ cd example
$ git init -b main
```


### Step 3: Make a new file

Make a new file with some content:
```console
$ nano example.txt
```
Write some text in the `example.txt`, save (`ctrl+O` then `ENTER`) and exit (`ctrl+X`).


### Step 4: Stage the change

Stage a newly made file `example.txt` before committing the change and record in
Git:
```console
$ git add example.txt
```


### Step 5: Commit the change with a message

The following command will commit the change. It should open the editor which
you have configured.  Then, add a commit message such as `initial
commit` at the very top.  Then save an exit (if you use
the default `nano` editor, `ctrl+O` `ENTER` then `ctrl+X`):
```console
$ git commit
```


### Step 6: See the change log

```console
$ git log
```

If you see now something line this your Git is configured for the workshop (the
name, email, commit message and also the "12e4cb8..." part will be different in
your case):
```text
commit 12e4cb892140bd14a413895b3b36c27db198eb22 (HEAD -> main)
Author: Radovan Bast <bast@users.noreply.github.com>
Date:   Fri May 15 16:41:13 2020 +0200

    making a test commit
```

---

## Troubleshooting

### Where is this configuration stored?

To see where this information is stored (`--show-origin` works on git version
2.8 or greater only), use:
```console
$ git config --list --show-origin
```


### On Windows `git log`, `git diff`, `git branch` or other git commands show no output at all

It seems this can be fixed by these configuration settings:
```console
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
```console
$ git config --global core.pager cat
```


### On Windows you see the warning "LF will be replaced by CRLF the next time Git touches it"

Solution is to set this:
```console
$ git config --global core.autocrlf false
```
