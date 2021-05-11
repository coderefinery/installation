# Terminal editors

There are text editors with a graphical user interface and text editors that
allow you to edit text in the terminal. Some allow both modes of operation.

Choosing the right editor is a matter of taste and preferences. Since we often
spend significant portions of our days editing text and source code, it can be
valuable to invest time into learning your favourite editor really well. Below
we list few common options and give some pros/cons.


## Nano

Easy to start but with minimal functionality. This comes installed as default
on most Linux distributions.  If you do not already have a favorite editor, we
recommend this to be used with this during the course. Later you can grow into a more
advanced editor such as Emacs or Vim.

The keyboard shortcuts are displayed at the bottom of the editor window. Using
this shortcuts involves pressing and holding down the control key (Ctrl) on
your keyboard and pressing another key. The pressing down and holding the Ctrl
key is represented by a hat "^".

Tutorial: [https://www.tutorialspoint.com/how-to-use-nano-text-editor](https://www.tutorialspoint.com/how-to-use-nano-text-editor)


**To create or open a file** called mytext.txt:
```shell
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

Ctrl + w then type the word to find and press enter (please note it is w not f as in most other editors)


## Vi/Vim

This editor takes some effort to get started. But has more functionality
than Nano, especially if you write programming code. Syntax highlighting,
clever copy-paste and better refactoring are some features.

Interactive VIM tutorial: [http://www.openvim.com](http://www.openvim.com)


**To create or open a file** called mytext.txt:
```shell
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
```shell
$ emacs mytext.txt
```

**To close a file:**
Type Ctrl-x followed by Ctrl-c.


## Visual Studio Code

[Visual Studio Code](https://code.visualstudio.com)
is a lightweight (around 200 MB) but powerful source code
editor. It is **free and open source** and runs on your desktop and is
available for Windows, macOS and Linux.  It has a rich ecosystem of extensions
for languages such as C++, Fortran, R, C#, Matlab, Java, Python, PHP, Go

Please visit the [download page](https://code.visualstudio.com/Download) for installation instructions.


## Other good alternatives, in particular for Windows

It is a matter of taste. Experiment and find the one you like best:

- [Atom](https://atom.io)
- [Notepad++](https://notepad-plus-plus.org)
