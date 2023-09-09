(editors)=

# Text editors for Git

A **text editor** edits plain text, and is important for almost any type of
computer work.

There are text editors with a graphical user interface and text
editors that allow you to edit text in the terminal, for example on a
remote cluster (and some allow both modes of operation).  This page
tells you how to connect different editors to git, so that command
line git will open them.

```{figure} img/git-invoke-editor.png
:alt: Screen recording of "git commit" from a command line which starts graphical vscode.  After saving and closing, it goes back to the terminal.

Demonstration.  Command line git starting the VScode graphical editor
to write a commit message (don't worry about what the command does, we
cover this in the CodeRefinery workshop).  Picture should be
animated.
```

Choosing the right editor is a matter of preferences. Since we often
spend significant portions of our days editing text and source code, it can be
valuable to invest time into learning your favourite editor really well. Below
we list few common options and give some pros/cons.

Search below for what you use.  We will demonstrate with Nano, and
that is reasonable to start with for this workshop.


## Nano (terminal)

Easy to start but comes with minimal functionality (thus we use it for demos).
If you do not already have a favorite editor, we recommend this to be used with
this during the course.

`````{tabs}
  ````{tab} Windows

  Nano is installed as part of the Git for Windows installer and no
  extra installation is needed.  It is available from the git-bash
  shell.
  ````

  ````{tab} macOS

  Nano is available by default.
  ````

  ````{tab} Linux

  Nano is available by default in most operating systems.  If not, you
  can install it via your software center.
  ````
`````

To set it as the default editor for Git:

```console
$ git config --global core.editor nano
```


The keyboard shortcuts are displayed at the bottom of the editor window. Using
this shortcuts involves pressing and holding down the control key (Ctrl) on
your keyboard and pressing another key. The pressing down and holding the Ctrl
key is represented by a hat "^".

Tutorial: [https://www.tutorialspoint.com/how-to-use-nano-text-editor](https://www.tutorialspoint.com/how-to-use-nano-text-editor)


**To create or open a file** called mytext.txt:
```console
$ nano mytext.txt
```

**To save content:**
Ctrl + o (hold the Ctrl key and press the o)


**To close a file:**
Ctrl + x (hold the Ctrl key and press the x)


**To move up, down, left or right with the document:**
Use the arrow keys and Page-up, Page-down keys


**Deleting text:**
Navigate to where the text to be deleted located in the document using arrow
keys. Use the Delete or Backspace keys to delete text.


**To find:**
Ctrl + w then type the word to find and press enter (please note it is w not f as in most other editors).


## Visual Studio Code (graphical)

[Visual Studio Code](https://code.visualstudio.com)
is a lightweight (around 200 MB) but powerful source code
editor. It is **free and open source** and runs on your desktop and is
available for Windows, macOS, and Linux.  It has a rich ecosystem of extensions
for languages such as C++, Fortran, R, C#, Matlab, Java, Python, PHP, and Go.

Please visit the [download page](https://code.visualstudio.com/Download) for installation instructions.

To configure git to use VScode from the command line:

```console
$ git config --global core.editor "code --wait"
```


## Notepad++ (graphical)

If you are on Windows and want to use Notepad or Notepad++, you can
configure this by providing the full path to the executable and optionally set
some options. For example (adjust the path if needed, and note the quotation):
```console
$ git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```


## Vi/Vim

This editor takes some effort to get started. But has more functionality
than Nano, especially if you write programming code. Syntax highlighting,
clever copy-paste and better refactoring are some features.

Interactive Vim tutorial: [http://www.openvim.com](http://www.openvim.com)

**To create or open a file** called mytext.txt:
```console
$ vi mytext.txt
```

**To close a file:**
Hit Escape, then type `:wq` and hit Enter.


## Emacs

Like Vim, Emacs takes some effort and learning to get started and offers almost unlimited
functionality. It is possible to interact with version control, even compile and run code,
send emails, etc. all from the editor itself.

Emacs guided tour: [https://www.gnu.org/software/emacs/tour/](https://www.gnu.org/software/emacs/tour/)

**To create or open a file** called mytext.txt:
```console
$ emacs mytext.txt
```

**To close a file:**
Type Ctrl-x followed by Ctrl-c.



## Other editors

[This page](https://swcarpentry.github.io/git-novice/02-setup/index.html)
contains a nice summary on how to configure Git with many other editors.
