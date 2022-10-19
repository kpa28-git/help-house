# pacman+yay


# One sentence
* Pacman is the Arch package manager; Yay does what Pacman does in addition to managing Arch User Repository (AUR) packages.

# Background
## Pacman
- Pacman is the offical Arch package manager
- It pulls from the Official Arch Repository Database
- Pacman supports:
	- Syncing with the remote repo database
	- Querying the local package database
	- Modify attributes of packages stored in the local package database
	- Upgrade or add packages to the system and install dependencies, from local file, url, or sync repos
	- Removing packages
	- Other stuff I don't use

## Yay
- Yay is a Pacman wrapper that allows direct access to the AUR (aka an AUR Helper) written in Go that is inspired by yaourt, apacman, and pacaur.
- All the commands that work with pacman work with pacaur, but pacaur also works directly with the AUR
- Yay's objectives (taken from its README):
	- Provide an interface for pacman
	- Yaourt-style interactive search/install
	- Minimal dependencies
	- Minimize user input
	- Know when git packages are due for upgrades

## Manual AUR install vs Yay
- Without Yay the process to manually install an AUR package:
	- Acquire the AUR package build files (git clone, browser download + extract, curl, etc)
	- Move to the package build directory
	- Verify the PKGBUILD and $PACKAGE_NAME.install files
	- Resolve (sync and install) pacakge dependencies automatically with pacman: *makepkg -cs*
		- **If this package has AUR dependencies, they must be installed using this process first**
	- Install the package (assuming all is well): *sudo pacman -U $PACKAGE_NAME.pkg.tar.xz*
	- The previous two steps can be combined into one if there are no AUR dependencies: *makepkg -csi*
- With a wrapper, AUR packages are treated similarly to official Arch repo packages: *yay -Syu $PACKAGE_NAME*
- Other pacman AUR helper wrappers exist but I like Yay best because:
	- It has the same syntax as pacman, basically interoperable but with more features for what I use it for
	- Generally works well and elegantly, more so than other options I've used like Yaourt
	- Philosophy of minimizing user interaction

## Hooks
- You can think of hooks as non-interactive pieces of code run as a response to an event (in this case package install, upgrade, removal).
- Pacman runs system hooks located at: /usr/share/libalpm/hooks
- User written hooks should be added to: /etc/pacman.d/hooks
- Hooks are extremely useful ways to automate, clean, debloat, and even protect your system.
- There are pacman and AUR packages that can install hooks for you, one example is [dashbinsh](https://aur.archlinux.org/packages/dashbinsh/), a hook that relinks /bin/sh to dash after pacman upgrades (overwriting the default bin/sh -> bash symlink). Without a hook or manual intervention /bin/sh will always be linked to bash after an upgrade.
