# conda


# Install and Configure
- Do not install Anaconda or Miniconda with a package manager, the package manager will install Anaconda/Miniconda in a system directory (like /opt/ or something) which will screw things up later because it needs to be user-accesible (to be able to use conda without sudo).
- Instead download and run one of the installers provided by Continuum Analytics.
- If prompted install Anaconda/Miniconda to your user home directory.

## Install Anaconda
- Download the latest version of the installer for your chosen platform and Python version from here: https://repo.continuum.io/archive/
- Run the script as your normal user

## Install Python3 64-bit Miniconda
- `wget -c http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh`
- `chmod 700 Miniconda3-latest-Linux-x86_64.sh`
- Run the script as your normal user: `bash Miniconda3-latest-Linux-x86_64.sh`


# Sources
- *conda --help*
- https://docs.conda.io/projects/conda/en/latest/user-guide/index.html

