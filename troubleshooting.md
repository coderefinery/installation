---
layout: master
---

# Configuring python and Anaconda scripts in Windows

Follow the steps below to configure python and Anaconda scripts (sphinx-quickstart, jupyter, etc) in git bash.

- Open windows command prompt
- Type "where python” to check where python is installed
    - If you use Anaconda, usually it is : “C:\Users\<username>\Anaconda3\python.exe"
- Add python and anaconda scripts to your path

```shell
SETX PATH “%PATH%;C:\Users\<username>\Anaconda3\Scripts;C:\Users\<username>\Anaconda3”
```
- Close the windows command prompt and open a new one.

Check `python --version`

If you open git bash, you will have python and anaconda scripts available to git bash.

# Other configuration problems

Please follow the [troubleshooting guide](https://github.com/swcarpentry/workshop-template/wiki/Configuration-Problems-and-Solutions) of software carpentry for fixing other configuration problems you might be having.
