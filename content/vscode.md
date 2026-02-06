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
:alt: Screenshot of the VS Code "Learn the Fundamentals" page highlighting features such as the built-in terminal and Git integration.

Visual Studio Code “Learn the Fundamentals” page highlighting features, including the built-in terminal and Git support (“Track your code with Git”).
```

## Using VS Code as a git editor

By default, Git uses your system’s configured editor. You can configure it to use Visual Studio Code instead.


Before configuring Git to use VS Code, make sure the `code` command is available in your system `PATH`.

`````{tabs}
  ````{tab} Windows

    If you selected VS Code during Git for Windows installation, it may already be configured. Otherwise, ensure the `code` command is available in `PATH` before running the command above.

  ````

  ````{tab} macOS

    In VS Code, open the Command Palette and run:

    - Shell Command: Install 'code' command in PATH

    You can verify by running:
    ```console
    $ code --version
    ```

  ````

  ````{tab} Linux

    If you installed VS Code via:
    
    - deb/rpm package -> `code` is usually added automatically
    - Snap -> use `code` (already available)
    - Manual install (tarball) -> you may need to manually add it to `PATH`

    You can verify by running:
    ```console
    $ code --version
    ```
  ````

`````

To configure VS Code as the editor that Git starts, run:

```console
$ git config --global core.editor "code --wait"
```

The `--wait` option ensures that Git pauses while the file (for example, a commit message) is open in VS Code. Git resumes only after you close the editor.

