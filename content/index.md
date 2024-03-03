# CodeRefinery workshop software installation instructions

In CodeRefinery workshops, we will use a number of tools and services.
For the best learning outcome, please make sure that you have all the
required software available in the computer that you will use during the
workshop.

```{note}
If you are using a university-managed computer from the following
universities, please follow specific instructions:

- [Aalto University](https://scicomp.aalto.fi/aalto/coderefinery-setup/)
```

```{warning}
Important: don't start installing yet for the 2024-03 workshop

We are still revising our instructions to make the whole workshop
easier. **We recommend you wait until the week before the workshop to
start following this page.**
```


## Requirements table

First, go through all the items in the check list below. If you are in
doubt or your answer is \"no\", then follow the linked guidelines for
each. First, ask how you want to do the exercises:

- **web** uses only the Github web interface. This is simple, but not
  very practical for day to day work. *Recommended if you are trying
  it out, but not doing development yourself yet*
- (We are considering adding this, it is not decided or written yet):
  **VSCode** uses the popular VSCode editor. It makes things easier,
  but is propriety and sends data to Microsoft.
  [Codium](https://vscodium.com/) is the same software without
  Microsoft tracking. *Recommended if you want to be most similar to
  what most people use day-to-day, and good balance of usability and
  power.*
- **cli** (command line interface) is the \"raw\" git, good for power
  people but hard if you haven\'t used command lines before. See the
  [command line crash course](https://scicomp.aalto.fi/scicomp/shell/)
  ([video](https://www.youtube.com/watch?v=56p6xX0aToI)). *Recommended
  if you know what the command line is and* already *want to get
  better at it*

```{list-table}
   :header-rows: 1

   * * Tool (combination)
     * Days?
     * Needed for git interface
     * Verification
   * * {ref}`GitHub account <github>`
     * 2, **3**, 5, 6
     * web, cli, vscode
     * {ref}`link <github-verification>`
   * * [Print this cheatsheet](https://aaltoscicomp.github.io/cheatsheets/git-the-way-you-need-it-cheatsheet.pdf)
     * 1-6 (optional but helpful)
     * cli, web, vscode
     * —
   * * {ref}`shell-and-git`
     * 1-6
     * cli
     * {ref}`link <shell-and-git-verification>`
   * * {ref}`ssh`
     * 2, **3**, 5, 6
     * cli
     * {ref}`link <ssh-verification>`
   * * VSCode
     * 1-6
     * vscode
     *
   * * {ref}`editors`
     * 1-6
     * cli
     * {ref}`link <shell-and-git-verification>`
   * * **Week 2 needs (optional and advanced: most people watch as a demo only):**
     *
     *
     *
   * * {ref}`conda`
     * 4-6
     * cli, vscode
     * {ref}`link <setting-conda-path-verification>`
   * * {ref}`conda-environment`
     * 4-6
     * cli, vscode
     * {ref}`link <conda-environment-verification>`
   * * {ref}`Terminal + conda work together <setting-conda-path>`
     * 4-6
     * cli, (no vscode?)
     * {ref}`link <setting-conda-path-verification>`
   * * Conda environment from VSCode
     * 4-6
     * vscode
     *
```


## Overall verification

We also provide a verification script that you can run to check that you
have everything set up correctly. Please **activate the Conda
environment** with `conda activate` (or however you do it on your
computer, see {ref}`conda-environment` before
running the verification script.

Try whichever of these works on your computer to download the
verification script:


`````{tabs}
  ````{group-tab} curl method
    If you have the command ``curl`` available, you can run the following command:
    ```console
    $ curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/coderefinery/installation/main/verify/verify-installation.sh | bash
    ```
  ````

  ````{group-tab} wget method
    If you have the command ``wget`` available, you can run the following command:
    ```console
	$ wget -qO- https://raw.githubusercontent.com/coderefinery/installation/main/verify/verify-installation.sh | bash
    ```
  ````

  ````{group-tab} manual download
    You can also run it without `wget` or `curl` by [downloading the
    script](https://raw.githubusercontent.com/coderefinery/installation/main/verify/verify-installation.sh)
    (right click and "Save as...") and then running it with `$ bash verify-installation.sh` inside your terminal.
  ````
`````

Running the script in your terminal will print a summary of what you
have installed:

```console
$ bash verify-installation.sh

--------------------------------------------------------------------------------------------------
For week one of the CodeRefinery workshop you will need Git installed and your SSH keys configured
Checking Git configuration and SSH keys:
  - [x] git version 2.40.1 found, good to go
  - [x] SSH keys seem to be setup correctly, good to go
  - [x] Git user name is set to Jane Doe, good to go
  - [x] Git user email is set to myuser@users.noreply.github.com, good to go
  - [x] Git editor is set to vim, good to go
  - [x] Git default branch is set to main, good to go

---------------------------------------------------------------------------------------------------
For week two of the CodeRefinery workshop you will need a relatively new version of conda installed
as well as a coderefinery conda environment:
  - [x] conda 22.11.1 found
        if your conda version is rather old (~ version 4.8.0 and older), please consider updating to avoid possible issues
  - [x] coderefinery conda environment found, good to go
```


## If you encounter any problems

- Ask a friend/colleague/local IT support. These are standard tools
  which many people can help with (and don\'t be afraid to ask - it\'s
  an unfortunate fact that software installation and configuration is
  hard).
- Before a workshop we offer 2 drop-in installation-help sessions.
  Please try by yourself first, but if you cannot solve problems, join
  in the sessions. Schedule is shown in the workshop website.
- Ask in the `#help` stream on the [CodeRefinery
  chat](https://coderefinery.zulipchat.com). You can also send an
  email to <support@coderefinery.org> to ask questions. Please
  describe the problem concretely as well as your operating system.


```{toctree}
:maxdepth: 1
:hidden:
:caption: Week 1

github
shell-and-git
ssh
editors
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Week 2

conda
conda-environment
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Extra (optional)

difftools
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Notes

motivation
removing-accounts
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Reference

license
```


## How to contribute improvements/suggestions

If you have suggestions for improvements or encounter problems, please open an
issue in the [the
repository](https://github.com/coderefinery/installation/issues).
