(conda-environment)=

# Creating a Conda environment for CodeRefinery workshops

1. Open your terminal shell (e.g. Bash)
2. If you have not, activate `conda` in Miniconda first using `conda activate` or `source ~/miniconda3/bin/activate`. If neither 
   works, please first follow {ref}`setting-conda-path`. You probably
   need to restart your shell terminal. Then try `conda activate` or `source ~/miniconda3/bin/activate` again.
3. Run the following command:
   ```
   conda env create -f https://raw.githubusercontent.com/coderefinery/software/main/environment.yml
   ```
4. Make sure that you see "coderefinery" in the output when you ask for a list of all available environments:
   ```
   conda env list
   ```


## Activating the `coderefinery` environment

In the workshop, we will ask you to activate this environment. 

First, follow the steps 1 and 2 in {ref}`the above section <conda-environment>` (i.e. open your terminal shell and activate `conda`).
Then run the following:
```shell
conda activate coderefinery
```
Or you can use

```shell
source activate coderefinery
```
as well. Please note however that `conda activate` is preferred command since conda ver. 4.4
*Reference: conda Release notes, 4.4.0 (2017-12-20), [New feature highlights, "conda activate"](https://docs.conda.io/projects/conda/en/latest/release-notes.html#id226)*

If this does not work, the `coderefinery` part should be replaced with the whole path, for example:
```shell
source activate ~/Miniconda3/envs/coderefinery
```


## How to verify the environment

Once activated, try the following 5 commands:
```shell
python -c 'import sys; assert sys.version_info.major>=3'
jupyter-lab --version
pytest --version
sphinx-build --version
snakemake --version
```

You should see an output like this and not see errors (exact version numbers are not too important):
```text
3.0.14
pytest 6.2.3
sphinx-build 3.5.4
6.2.1
```


## Deactivating the `coderefinery` environment

```shell
conda deactivate
```


## Deleting the `coderefinery` environment

If you don't need the `coderefinery` environment anymore, it is best to delete
it. The following command will delete the whole environment:
```shell
conda remove --name coderefinery --all
```

In case you have both Anaconda3 and Miniconda3, check from which base
environment the `coderefinery` environment was created, and first activate the
corresponding base environment for the above command to work.
