(conda-environment)=

# Conda environment from our environment.yml

```{prereq}
- You have Miniconda or Anaconda installed.
```

1. Open your terminal shell (e.g. Bash or Zsh).
2. Activate `conda` using `conda activate` or `source ~/miniconda3/bin/activate`. If neither 
   works, please first follow {ref}`setting-conda-path`. You probably
   need to restart your shell terminal. Then try to activate `conda` again.
3. Run the following command:
   ```console
   $ conda env create -f https://raw.githubusercontent.com/coderefinery/software/main/environment.yml
   ```
4. Make sure that you see "coderefinery" in the output when you ask for a list of all available environments:
   ```console
   $ conda env list
   ```


## Activating the `coderefinery` environment

In the workshop, we will ask you to activate this environment. 

First, follow the steps 1 and 2 in {ref}`the above section <conda-environment>` (i.e. open your terminal shell and activate `conda`).
Then run the following:
```console
$ conda activate coderefinery
```

Alternatively you can use:
```console
$ source activate coderefinery
```
Please note however that `conda activate` is preferred command [since Conda v4.4](https://docs.conda.io/projects/conda/en/latest/release-notes.html#id330).

If this does not work, the `coderefinery` part should be replaced with the whole path, for example:
```console
$ source activate ~/Miniconda3/envs/coderefinery
```

---

(conda-environment-verification)=

## How to verify the environment

Once activated, try the following 5 commands.
You should see versions printed and not see errors (exact version numbers are not too important):
```console
$ python --version

Python 3.11.0
```
```console
$ jupyter-lab --version

3.6.3
```
```console
$ pytest --version

7.4.0
```
```console
$ sphinx-build --version

sphinx-build 5.3.0
```
```console
$ snakemake --version

7.22.0
```


## Deactivating the `coderefinery` environment

```console
$ conda deactivate
```


## Deleting the `coderefinery` environment

If you don't need the `coderefinery` environment anymore, it is best to delete
it. The following command will delete the whole environment:
```console
$ conda remove --name coderefinery --all
```

In case you have both Anaconda3 and Miniconda3, check from which base
environment the `coderefinery` environment was created, and first activate the
corresponding base environment for the above command to work.
