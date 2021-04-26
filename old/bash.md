## Installation on Linux

The default shell is usually Bash, but if your machine is set up differently
you can run it by opening a terminal and typing `bash`. There is no need to
install anything.


## Installation on macOS

The default shell in all versions of macOS before "Catalina" is Bash, so no need to install
anything. You access Bash from the terminal (found in
`/Applications/Utilities`). The default shell on macOS "Catalina" is zsh which will work
equally fine for our purposes.

Watch the [tutorial for installing the Shell, Git, and Nano on a Mac for a Software Carpentry Workshop](https://www.youtube.com/watch?v=9LQhwETCdwY)
(copyright Software Carpentry) for an example on how to open the terminal.

You may want to keep the terminal in your dock for this workshop.


## Installation on Windows using Git Bash

Possible problem with this approach is that Git Bash does not see
the Python and Anaconda scripts. See also [the troubleshooting page](/installation/troubleshooting/).

If you want to make sure that both Git and Python work in the same environment without modifying any
path variables, you might want to skip this installation altogether and install
Git using Conda ([see the Git installation instructions](/installation/git/#installation-on-windows)).

If you decide to try Git Bash, you can
watch the [video tutorial](https://www.youtube.com/watch?v=339AEqk9c-8)
(copyright Software Carpentry).

First download the [Git for Windows installer](https://git-for-windows.github.io).

Then run the installer and follow these steps:

![step 1](/assets/img/git_install_step1.png)
- Click on "Next".

![step 2](/assets/img/git_install_step2.png)
- Click on "Next".

![step 3](/assets/img/git_install_step3.png)
- Choose "Nano" as the editor (unless you know you prefer vi or notepad++)

![step 4](/assets/img/git_install_step4.png)
- Keep the recommended "Git from the command lineand also from 3rd-party software"
  selected and click on "Next". If you forgot to do this programs that you need
  for the workshop will not work properly. If this happens rerun the installer
  and select the appropriate option.

![step 5](/assets/img/git_install_step5.png)
- Click on "Next".

![step 6](/assets/img/git_install_step6.png)
- Keep "Checkout Windows-style, commit Unix-style line endings" selected and click on "Next".

![step 7](/assets/img/git_install_step7.png)
- Keep "Use Windows' default console window" selected and click on "Next".

![step 8](/assets/img/git_install_step8.png)
- Click on "Install".

![step 9](/assets/img/git_install_step9.png)
- Unselect "View Release Notes", select "Launch Git Bash"  and click on "Next".

![step 10](/assets/img/git_install_step10.png)
- In the console which should open type `git --version` to verify the Git is installed.

If your "HOME" environment variable is not set (or you don't know what this is):
- Open command prompt (Open Start Menu then type `cmd` and press [Enter])
- Type the following line into the command prompt window exactly as shown: `setx HOME "%USERPROFILE%"`
- Press [Enter], you should see `SUCCESS: Specified value was saved.`
- Quit command prompt by typing `exit` then pressing [Enter].

This will provide you with both Git and Bash in the Git Bash program.
