---
title: Bash
---

See the [video tutorial](https://www.youtube.com/watch?v=339AEqk9c-8)
(copyright Software Carpentry).

First download the [Git for Windows installer](https://git-for-windows.github.io).

Then run the installer and follow these steps:

- Click on "Next".
- Click on "Next".
- Keep "Use Git from the Windows Command Prompt" selected and click on "Next".
  If you forgot to do this programs that you need for the workshop will not work properly.
  If this happens rerun the installer and select the appropriate option.
- Click on "Next".
- Keep "Checkout Windows-style, commit Unix-style line endings" selected and click on "Next".
- Keep "Use Windows' default console window" selected and click on "Next".
- Click on "Install".
- Click on "Finish".

If your "HOME" environment variable is not set (or you don't know what this is):
- Open command prompt (Open Start Menu then type `cmd` and press [Enter])
- Type the following line into the command prompt window exactly as shown: `setx HOME "%USERPROFILE%"`
- Press [Enter], you should see `SUCCESS: Specified value was saved.`
- Quit command prompt by typing `exit` then pressing [Enter].

This will provide you with both git and bash in the git bash program.
