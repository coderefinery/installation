---
layout: master
---

# Python and Anaconda scripts are not visible in Git Bash

Follow the steps below to enable Python and Anaconda scripts in Git Bash:

- Open the windows command prompt
- Type "where python” to check where python is installed
    - If you use Anaconda, usually it is : “C:\Users\<username>\Anaconda3\python.exe"
- Add python and anaconda scripts to your path

```shell
SETX PATH "%PATH%;C:\Users\<username>\Anaconda3\Scripts;C:\Users\<username>\Anaconda3"
```
- Close the windows command prompt and open a new one.

Check `python --version`

If you open Git Bash, you will have Python and Anaconda scripts available to Git Bash.


# Git commands not available in Anaconda

Instead of modifying the path as above, an easier solution might be to install Git through
conda directly into the Anaconda environment:

```shell
$ conda install git
```

# Pip install datrie fails with Python 3.7

Install from GitHub is a workaround:

```shell
$ pip3 install git+https://github.com/pytries/datrie.git
```

See also [this issue](https://github.com/pytries/datrie/issues/52).


# Other configuration problems

Please follow the
[Software Carpentry troubleshooting guide](https://github.com/swcarpentry/workshop-template/wiki/Configuration-Problems-and-Solutions)
for fixing other configuration problems you might be having.
