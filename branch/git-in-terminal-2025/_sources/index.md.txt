# CodeRefinery workshop software installation instructions

In CodeRefinery workshops, we will use and show a number of tools. We give you
several options on how to participate (below).
- If you are using a
  university-managed computer from the Aalto University, please follow
  [specific
  instructions](https://scicomp.aalto.fi/aalto/coderefinery-setup/).
- We recommend to ask a colleague/helper/team leader to go over the checklist with you.

````{grid} 2
:gutter: 1

```{grid-item-card} What is the minimum of software/accounts I can get away with?
  :class-card: sd-border-1 sd-animate-grow100

  {octicon}`stopwatch;2em;sd-text-info` 10 minutes

  The bare minimum to participate in exercises for workshop part 1 (week 1: git and GitHub ) and to only
  follow part 2 lectures/demonstrations:
  - {ref}`github`
  
  You will be able to participate in almost all exercises of part 1 (week 1) using the web
  interface of GitHub. This will hopefully give you a good understanding of the
  basics of Git and GitHub. For your own work after the workshop, you will
  probably want to use a local editor and Git on your computer.
```

```{grid-item-card} I want to be able to do the exercises on my computer in an editor
  :class-card: sd-border-5 sd-animate-grow100

  {octicon}`stopwatch;2em;sd-text-info` 20 minutes

  We believe that **most learners will choose this option**.
  In this case we recommend two things:
  - {ref}`github`
  - [Visual Studio Code](https://code.visualstudio.com/download)
  - {ref}`git-in-vscode`

  If you prefer you can use {ref}`editors`. Most of these do not come with Git integration,
  so you would need to use Git from the terminal.
```

```{grid-item-card} I want to use Git from a terminal, not from an editor
  :class-card: sd-border-1 sd-animate-grow100

  {octicon}`stopwatch;2em;sd-text-info` 15-60 minutes

  In this case you want to use the command line interface for Git.
  This is good for power users but hard if you haven't used
  command lines before:
  - {ref}`github`
  - {ref}`git-in-terminal`
  - {ref}`ssh`
  - See the [command line crash
    course](https://scicomp.aalto.fi/scicomp/shell/)
    ([video](https://youtu.be/xbTTDLA3txI))
```

```{grid-item-card} In workshop part 2, I want to be able to run the exercises on my computer and have all tools available
  :class-card: sd-border-1 sd-animate-grow100

  {octicon}`stopwatch;2em;sd-text-info` 30-90 minutes

  If part 2 happens over multiple days, we will do the exercises together. If part 2 is kept short within one week (week 2), we will not ask you to run the exercises during the workshop
  2:
  - {ref}`github`
  - [Visual Studio Code](https://code.visualstudio.com/download) (or if you prefer, other {ref}`editors`)
  - {ref}`git-in-vscode`
  - {doc}`conda`
```

````


```{toctree}
:maxdepth: 1
:hidden:
:caption: Part 1

github
vscode
editors
git-in-terminal
git-in-vscode
ssh
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Part 2

conda
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Help!

problems
Suggestions/improvements/issues?<https://github.com/coderefinery/installation/issues>
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Extra tools we might mention

difftools
```

```{toctree}
:maxdepth: 1
:hidden:
:caption: Reference

Shell crash course <https://youtu.be/xbTTDLA3txI>
motivation
removing-accounts
license
```
