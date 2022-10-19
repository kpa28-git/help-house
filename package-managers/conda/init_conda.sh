#!/bin/bash
# Kevin Patel

# An example script for conda to install some conda/pip packages to the root conda env.
# This is a bash script because as of this writing conda only supports initialization for a small number of shells,
# we can only activate a conda env on these supported shells, and not all of them are POSIX compliant.

declare -a pkg_conda=("numpy" "pandas" "pyarrow" "scipy" "scikit-learn" "dask" "matplotlib" "tensorboard" "statsmodels" "jupyter" "humanize" "pytorch" "graphviz" "python-graphviz" "mongodb" "pymongo");
declare -a pkg_pip=("pytorch-lightning" "duka" "kymatio" "more_itertools");

#. "$HOME/miniconda3/etc/profile.d/conda.sh";
alias car="conda activate" cdr="conda deactivate";
car && trap cdr EXIT;
conda update conda pip;

conda install "${pkg_conda[@]}";

for i in "${pkg_pip[@]}"; do
	yes | pip install -U "$i";
done;

## Alternate channel conda installations:
# conda install -c jaikumarm hyperopt;

## Alternate pip installations:
# pip install -U redis==2.10.6;

