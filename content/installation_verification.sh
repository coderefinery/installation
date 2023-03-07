#! /bin/bash

# check if git is installed and with which version
if which git 2>/dev/null >/dev/null; then
   echo "$(git --version) found, good to go"
 else
   echo "git NOT found, please follow https://coderefinery.github.io/installation/shell-and-git/#installation and then try again"
fi

#check if conda is installed and with which version
if which conda 2>/dev/null >/dev/null; then
    echo "$(conda --version) found, good to go" 
  else
    echo "conda NOT found, please follow https://coderefinery.github.io/installation/conda/#conda and then try again"
fi

#check if coderefinery conda environment exists, also under different name
if conda env list | grep "coderefinery" 2>/dev/null >/dev/null; then
    echo "coderefinery conda environment found, good to go"
  else
    echo "coderefinery conda environment NOT found, did you maybe give it another name? Please enter your environment name and then press enter: "
    read envname
    if conda env list | grep $envname 2>/dev/null >/dev/null; then
      echo "coderefinery environment found with name $envname , good to go"
    else
      echo "coderefinery conda environment NOT found, please follow https://coderefinery.github.io/installation/conda-environment/#conda-environment and then try again"
    fi
fi

#check that github ssh is setup correctly
if ssh git@github.com 2>&1 | grep -q 'successfully'; then
    echo "ssh keys seem to be setup correctly, good to go"
  else
    echo "something seems to have gone wrong with your ssh keys for github 
setup, please follow https://coderefinery.github.io/installation/ssh/#ssh and then try again"
fi
