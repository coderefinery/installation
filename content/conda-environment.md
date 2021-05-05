(conda-environment)=

# Creating a Conda environment for CodeRefinery workshops

1. Make a new folder for a workshop at somewhere you can easily access (e.g.
   ./coderefinery-workshop).
2. Download
   [environment.yml](https://raw.githubusercontent.com/coderefinery/software/main/environment.yml)
   from [CodeRefinery's software
   repository](https://github.com/coderefinery/software/blob/main/environment.yml)
   or make an `environment.yml` with the same contents inside the newly made
   folder.
3. In Bash, navigate to the folder where you put the `environment.yml`
   (the file names the environment `coderefinery` automatically).
4. If you have not, activate `conda` in Miniconda first using `conda activate` and if this does not
   work, please first follow {ref}`setting-conda-path`.
5. Run the following command: `conda env create -f environment.yml`
6. Make sure that you have "coderefinery" folder in Miniconda3/envs/. If you
   use Anaconda3, then it should be in Anaconda3/envs/.


## Activating the `coderefinery` environment

In the workshop, we will ask you to activate this environment like this:
```shell
source activate coderefinery
```

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
