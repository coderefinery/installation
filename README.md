

# [CodeRefinery workshop software installation instructions](https://coderefinery.github.io/installation/)


## License and credit

These installation instructions are inspired by and derived from
work by [Software Carpentry](http://software-carpentry.org) which is licensed under the
[Creative Commons Attribution license (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

See also [license and credit](/license/).


## How to add instructions

Get inspired by https://swcarpentry.github.io/workshop-template/ but add attribution.

Add Markdown files to the directories:

```
_linux
_osx
_win
```

The files in these directories are rendered in the alphabetical order.

If you use identical instructions for several operating systems, use symlinks
to make it clear in the sources and to avoid accidentally diverging
documentation.  If you want to edit a file that is symlinked and where a
symlink does not make sense anymore, feel free to create a separate file.


## Styling

Feel free to improve styling but insist that instructions are written in Markdown
and the content (Markdown) is kept separate from the templating and styling.
