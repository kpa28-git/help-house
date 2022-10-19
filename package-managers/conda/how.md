# conda


# Meta
## Conda help information (no manpage by default)
`conda help`

## Information about the Anaconda install
`conda info`

# Conda Environments
## Create and provision conda environment
`conda create -n $ENV_NAME`
or

`conda create -n $ENV_NAME python=$PY_VERSION`
or

`conda create -n $ENV_NAME $PACKAGE_NAME=$PKG_VERSION`
or

`conda create -n $ENV_NAME python=$PY_VERSION $PACKAGE_NAME=$PKG_VERSION $PACKAGE_NAME_1 $PACKAGE_NAME_2`


## Activate conda env
`conda activate $ENV_NAME`

## Deactivate conda env
`conda deactivate $ENV_NAME`

# Package Information
## List all locally installed packages
`conda list`
or
`conda list -n $ENV_NAME`

## List all locally installed pip packages
`conda list | grep pypi`
or
`conda list -n $ENV_NAME | grep pypi`

## Search installed packages
`conda list $PACKAGE_NAME`
or
`conda list -n $ENV_NAME $PACKAGE_NAME`

## Search for package in remote package database
`conda search $PACKAGE_NAME`

## Search for package in Anaconda.org package database
`conda search --override-channels --channel defaults $PACKAGE_NAME`

# Package Management
## Update package managers
`conda update conda pip`

## Update installed package or all installed packages
`conda update $PACKAGE_NAME`
or
`conda update --all`

## Install packages
`conda install -n $ENV_NAME $PACKAGE_NAME`
or

`conda install $PACKAGE_NAME`
or

`conda install $PACKAGE_NAME=$PKG_VERSION # Also works for reinstalling to a different version`
or

`conda install $PACKAGE_NAME=$PKG_VERSION $PACKAGE_NAME_1=$PKG_VERSION_1 -n $PY_VER_ENV`

## Install package from conda-forge channel
`conda install $PACKAGE_NAME -c conda-forge`

## Install non-conda packages with pip
`conda update conda pip && pip install $PACKAGE_NAME`

## Remove Packages
`conda remove $PACKAGE_NAME`
or
`conda remove -n $ENV_NAME PACKAGE_NAME`

## Clear all unused cached packages
`conda clean --packages`

## Clear all cached data
`conda clean --all`
