#! /bin/bash

echo "#######################################"
echo "### For week one of the Coderefinery workshop you will need git installed and your ssh keys set up correctly:"

# check if git is installed and with which version
if which git 2>/dev/null >/dev/null; then
   echo "*** $(git --version) found, good to go"
 else
   echo "*** git NOT found, please follow https://coderefinery.github.io/installation/shell-and-git/#installation and then try again"
   exit
fi

#check that github ssh is setup correctly
if ssh git@github.com 2>&1 | grep -q 'successfully'; then
    echo "*** ssh keys seem to be setup correctly, good to go"
  else
    echo "*** something seems to have gone wrong with your ssh keys for github 
setup, please follow https://coderefinery.github.io/installation/ssh/#ssh and then try again"
fi

echo "#######################################"
echo "### For week two of the Coderefinery workshop you will need a relatively new version of conda installed, as well as a coderefinery conda environment setup:" 
#check if conda is installed and with which version
if which conda 2>/dev/null >/dev/null; then
    echo "*** $(conda --version) found, please note that if your conda version is rather old (~ version 4.8.0 and older), please consider updating to avoid possible issues. Please follow https://coderefinery.github.io/installation/conda/#if-you-have-miniconda-or-anaconda-but-you-have-not-used-it-for-a-long-time and then try again, or continue with the older version on own risk." 
  else
    echo "*** conda NOT found, please follow https://coderefinery.github.io/installation/conda/#conda and then try again"
    exit
fi
#check if coderefinery conda environment exists, also under different name
if conda env list | grep "coderefinery" 2>/dev/null >/dev/null; then
    echo "*** coderefinery conda environment found, good to go"
  else
    echo "*** coderefinery conda environment NOT found, did you maybe give it another name? Please enter your environment name and then press enter: "
    read envname
    if conda env list | grep $envname 2>/dev/null >/dev/null; then
      echo "*** coderefinery environment found with name $envname , good to go"
    else
      echo "*** coderefinery conda environment NOT found, please follow https://coderefinery.github.io/installation/conda-environment/#conda-environment and then try again"
      exit
    fi
fi


