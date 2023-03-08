#! /bin/bash

echo "#######################################"
echo "### For week two of the Coderefinery workshop you will need a relatively new version of conda installed, as well as a coderefinery conda environment setup:" 
#check if conda is installed and with which version
if which conda 2>/dev/null >/dev/null; then
    echo "*** $(conda --version) found, please note that if your conda version is rather old (~ version 4.8.0 and older), please consider updating to avoid possible issues. Please follow https://coderefinery.github.io/installation/conda/#if-you-have-miniconda-or-anaconda-but-you-have-not-used-it-for-a-long-time and then try again, or continue with the older version on own risk." 
    #check if coderefinery conda environment exists, also under different name
    if conda env list | grep "coderefinery" 2>/dev/null >/dev/null; then
	echo "*** coderefinery conda environment found, good to go"
    else
        echo "*** coderefinery conda environment NOT found, did you maybe give it another name? Please enter your environment name and then press enter:"
        read envname
	if conda env list | grep $envname 2>/dev/null >/dev/null; then
	    echo "*** coderefinery environment found with name $envname , good to go"
	  else
	    echo "*** coderefinery conda environment NOT found, please follow https://coderefinery.github.io/installation/conda-environment/#conda-environment and then try again"
	    exit
	fi
    fi
  else
    echo "*** conda NOT found, please follow https://coderefinery.github.io/installation/conda/#conda and then try again"
    exit
fi

echo "### You are all set up for week 2 of the CodeRefinery workshop :)"
