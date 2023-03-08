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


echo "### You are all set up for week 1 of the CodeRefinery workshop :)"
