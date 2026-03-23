(git-in-vscode)=

# Git in VSCode

This page is for setting up Git for VSCode. If you use a different IDE, try following
these instructions. If you are comfortable with the terminal, see {ref}`git-in-terminal`.

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
    2.  **From the dropdown menu select an editor**:
	    - Select VSCode from the list.  You must have
          VS Code installed already.

        After this, you don't have to do step 2 "selecting an editor"
        step below (but that step lets you change your choice).  
    
	    - If you use a different different IDE, select that one if available.
        Otherwise follow step 2 "selecting an editor" step below.

    3.  **On the page that says "Adjusting the name of the initial branch in new repositories", choose
        "Override the default branch name for new repositories" and choose `main`. This will ensure
        the highest level of compatibility for our lessons.**
    4.  Ensure that "Git from the command line and also from 3rd-party software" is selected and
        click on "Next". This ensures compatibility if with different text editors and the terminal.
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

  *Text copied and adapted from: [the Carpentries set up page](https://carpentries.github.io/workshop-template/#shell)*
  ````

  ````{tab} macOS

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

  If Git is not already available on your machine you can try to install it via
  your distribution package manager.

  Open VSCode. In the toolbar open the "Terminal" menu and select "New Terminal".

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
- VSCode installed on your machine
- Git installed on your machine
```


### Video instruction

[This video (9
min)](https://www.youtube.com/watch?v=WdDTp8NeHBs&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)
shows how to configure Git. If you experience problems,
watch [this troubleshooting
video](https://www.youtube.com/watch?v=B27pUBrWp5w&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg).

### Step 0: Start your terminal that has git

Start Visual Studio Code. In the toolbar open the "Terminal" menu and select "New Terminal".

This is a command line interface.  You need to run a few commands to set up git. To run
a command, write it into the terminal and press Enter.


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

You can skip this step if you already set it when installing git for Windows.

This sets the text editor to git will use when called from the outside. 

```console
$ git config --global core.editor code
```

To set other editors, see {doc}`editors`.



### Step 3: Set default branch

You can skip this step if you already set it when installing git for Windows.

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

You can skip this step if you already set it when installing git for Windows.

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
- VSCode installed on your machine
- Git installed on your machine
```

Before verifying, restart Visual Studio Code.

The following shows the same steps that are shown in the video above.  You can
see verification part in [the same video for configuration at
5:50](https://www.youtube.com/watch?v=WdDTp8NeHBs&t=350s).


### Step 1: Check your Git version

Check your git version:

Start Visual Studio Code. In the toolbar open the "Terminal" menu and select "New Terminal".
In the new terminal, run

```console
$ git --version

git version 2.39.2
```

- We recommend at least 2.23.
- Ideal is 2.28 and newer.
- But the lesson and workshop will still work even with Git 2.0
  and we will add instructions/workarounds for Git below 2.28 or 2.23.


### Step 2: `git init -b main` inside a new folder

Create a new example folder and open it. Select the git interface on the left side panel
and click "Initialize Repository".


### Step 3: Make a new file

Create a new file called `example.txt`. Write some content into the file.


### Step 4: Stage the change

Stage a newly made file `example.txt` before committing the change. Open the git section
in the side panel, find the file and click on the `+` button next to it. If the button is not
there, it will appear when you hover the mouse pointer over the filename.


### Step 5: Commit the change with a message

Write a commit message such as "initial commit" in the text box above the file list.
Then click "Commit".


### Step 6: See the change history

Open the file view in the left side panel. Select `example.txt` and click on "Timeline"
below the file list. You should see you commit in the timeline. Click on the commit to see
the changes you made.

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
