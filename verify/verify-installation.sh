#!/usr/bin/env bash

echo "--------------------------------------------------------------------------------------------------"
echo "For week one of the CodeRefinery workshop you will need Git installed and your SSH keys configured"
echo "Checking Git configuration and SSH keys:"

# check for Git
if which git 2>/dev/null >/dev/null; then
    echo "  - [x] $(git --version) found, good to go"
else
    echo "  - [ ] Git NOT found, please follow https://coderefinery.github.io/installation/shell-and-git/#installation and then try again"
fi

# check whether the response to ssh -T git@github.com contains "successfully"
# the "echo | ssh" part is needed to make sure the script does not stop when running through cat or curl
# https://superuser.com/questions/1194343/why-do-bash-behave-differently-for-script-from-stdin
if echo | ssh -T git@github.com 2>&1 | grep -q 'successfully'; then
    echo "  - [x] SSH keys seem to be setup correctly, good to go"
else
    echo "  - [ ] something seems to have gone wrong with your SSH keys for GitHub"
    echo "        please follow https://coderefinery.github.io/installation/ssh/#ssh and then try again"
fi

# check whether Git name is set
if [ -z "$(git config --get user.name)" ]; then
    echo "  - [ ] Git user name is not set"
else
    echo "  - [x] Git user name is set to $(git config --get user.name), good to go"
fi

# check whether Git email is set
if [ -z "$(git config --get user.email)" ]; then
    echo "  - [ ] Git user email is not set"
else
    echo "  - [x] Git user email is set to $(git config --get user.email), good to go"
fi

# check whether Git editor is set
if [ -z "$(git config --get core.editor)" ]; then
    echo "  - [ ] Git editor is not set"
else
    echo "  - [x] Git editor is set to $(git config --get core.editor), good to go"
fi

# check whether Git defaultBranch is set
if [ -z "$(git config --get init.defaultBranch)" ]; then
    echo "  - [ ] Git default branch is not set"
else
    echo "  - [x] Git default branch is set to $(git config --get init.defaultBranch), good to go"
fi

echo
echo "---------------------------------------------------------------------------------------------------"
echo "For week two of the CodeRefinery workshop you will need a relatively new version of conda installed"
echo "as well as a "coderefinery" conda environment:"

# check for conda
if type conda 2>/dev/null >/dev/null; then
    echo "  - [x] $(conda --version) found"
    echo "        if your conda version is rather old (~ version 4.8.0 and older), please consider updating to avoid possible issues"
else
    echo "  - [ ] conda NOT found, please follow https://coderefinery.github.io/installation/conda/#conda and then try again"
    exit 1
fi

# check if coderefinery conda environment exists, also under different name
if conda env list | grep "coderefinery" 2>/dev/null >/dev/null; then
    echo "  - [x] coderefinery conda environment found, good to go"
else
    echo "  - [ ] coderefinery conda environment NOT found, did you maybe give it another name?"
    echo "        Please enter your environment name and then press enter:"
    read envname
    if conda env list | grep ${envname} 2>/dev/null >/dev/null; then
        echo "  - [x] coderefinery environment found with name '${envname}', good to go"
    else
        echo "  - [ ] coderefinery conda environment NOT found, please follow https://coderefinery.github.io/installation/conda-environment/#conda-environment and then try again"
    fi
fi
