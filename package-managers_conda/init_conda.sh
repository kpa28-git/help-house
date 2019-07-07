#!/bin/bash
# Kevin Patel

# An example script for conda to install some conda/pip packages to the root conda env.
# This is a bash script because as of this writing conda only supports initialization for a small number of shells,
# we can only activate a conda env on these supported shells, and not all of them are POSIX compliant.

declare -a pkg_conda=("numpy" "pandas" "pyarrow" "arrow-cpp" "parquet-cpp" "numba" "scipy" "jupyter" "scikit-learn" "dask" "python-graphviz" "graphviz" "pygraphviz" "matplotlib" "statsmodels" "pymongo" "mongodb" "pytorch" "keras" "dill" "humanize");
declare -a pkg_pip=();

alias car="conda activate" cdr="conda deactivate";
car && trap cdr EXIT;
conda update conda pip;

# CONDA INSTALLS
for i in "${pkg_conda[@]}"; do
	yes | conda install "$i";
done;

## Alternate channel conda installations:
# conda install -c conda-forge xonsh prompt_toolkit;
# conda install -c conda-forge dask-ml;
# conda install -c jaikumarm hyperopt;

# PIP INSTALLS
for i in "${pkg_pip[@]}"; do
	yes | pip install -U "$i";
done;

## Alternate pip installations:
# pip install -U redis==2.10.6;

