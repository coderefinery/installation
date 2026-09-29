(vscode)=

# Visual Studio Code

[Visual Studio Code](https://code.visualstudio.com) is a popular source code
editor. It is **free and open source** and runs on your desktop and is
available for Windows, macOS, and Linux.  It has a rich ecosystem of extensions
for languages such as C++, Fortran, R, C#, Matlab, Java, Python, PHP, and Go.
**If you are new to text editors, we recommend to start with this one**.

- Please visit the [download page](https://code.visualstudio.com/Download) for
  installation instructions.  But please note that Visual Studio Code sends data
  to Microsoft.
- Please also browse the page about
  [Using Git source control in VS Code](https://code.visualstudio.com/docs/sourcecontrol/overview).
- [VSCodium](https://vscodium.com/) is the same software without Microsoft
  tracking.
- Windows (and any operating system that has the option): when
  installing, select the option "Add to PATH" (this is default).

```{figure} img/vscode.png
:alt: Screenshot of configuration options when setting up Visual Studio Code

When installing Visual Studio Code, I have selected the options
"Built-in terminal" and "Track your code with Git".
```

## Using VS Code as a git editor

This will set VS Code as the editor that Git starts.  It will start a
new tab, and Git will wait until you save and close that tab.  Git for
Windows on Windows may automatically set this if you select it as an
editor:

```console
$ git config --global core.editor "code --wait"
```
