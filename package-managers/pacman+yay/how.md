# pacman+yay


# Meta
## Print system package stats
`yay -Ps`


# Search Repositories
## Search for a package on the Arch official repo database only
`pacman -Ss $PACKAGE_NAME`

## Search for a package on the Arch official repo database and AUR
`yay -Ss $PACKAGE_NAME`

## Search for package on Arch official repo database and AUR and provide detailed summary
`yay -Si $PACKAGE_NAME`


# Search Installed
## List all installed packages
`yay -Q`

## List all installed AUR packages
`yay -Qem`

## Search for installed package
`yay -Qs $PACKAGE_NAME`

## Search for all packages that match the regular expression
`yay -Qs $REG_EXP`

## List files of the package
`yay -Ql $PACKAGE_NAME`

## Count files of the package
`yay -Qk $PACKAGE_NAME`

## Search for packages that own the file
`yay -Qo $PATH_TO_FILE`


# Install Packages
## Sync the local package list to remote
`yay -Sy`

## Force sync the local package list even if not out of date
`yay -Syy`

## Sync the local package list and upgrade all packages afterwards
`yay -Syu`

## Force sync the local package list and upgrade all packages afterwards
`yay -Syyu`

# Search for package and present menu for its+dependencies installation
`yay $SEARCH_TERM`

## Install a package+dependencies
`yay -S $PACKAGE_NAME`

## Sync the local package list, upgrade all packages, and install package
`yay -Syu $PACKAGE_NAME`

## Force sync the local package list, upgrade all packages, and install package
`yay -Syyu $PACKAGE_NAME`

## Install a downloaded or local package
`yay -U $PATH_OR_URL`

## Download AUR PKGBUILD
`yay -G $PACKAGE_NAME`


# Remove Packages
## Remove a package but keep dependencies + config files
`yay -R $PACKAGE_NAME`

## Remove a package + its unique dependencies (dependencies that are not required by other packages)
`yay -Rs $PACKAGE_NAME`

## Remove a package + its config files
`yay -Rn $PACKAGE_NAME`

## Remove a package + its unique dependencies + its config files
`yay -Rsn $PACKAGE_NAME`

## Clear all unneeded locally installed depdencies
`yay -Yc`

## Clear the package manager cache
`paccache -r`

# Maintenance

## Run Pacdiff (manage pacnew / pacsave files)
`pacdiff`

## Run Pacdiff with <MY_EDITOR>
`DIFFPROG=<MY_EDITOR> pacdiff`

