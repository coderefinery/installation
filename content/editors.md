(editors)=

# Text editors

A **text editor** edits plain text, and is important for almost any type of
computer work.

```{admonition} If you are new to text editors
If you are new to text editors, we recommend that you practice a bit:
try to create a file, edit it, save it, re-open it.
```

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


## Visual Studio Code (graphical)

**If you are new to text editors, we recommend to start with this one**.
We have an extra page for it: {ref}`vscode`.

```{admonition} If you choose a different editor
If you choose a different editor, make sure to browse its documentation
on how to conntect it to Git.
```


## Nano (terminal)

Easy to start but comes with minimal functionality.

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
