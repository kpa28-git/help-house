# Linux-FHS

# Root Directory FSH (Filesystem Hierarchy Standard)
* `/`: The root directory, where the whole tree starts
* `/bin/`: essential command binaries that need to be available for all users
	- Remember: `/bin/` -> "Binaries"
	- May be a symlink to `/usr/bin`
* `/boot/`: boot loader files (e.g. kernels, initrd)
	- Remember: `/boot/` -> "Boot Loader"
* `/dev/`: device files (like `/dev/sd<x>`, `/dev/null`, `/dev/random`)
	- Remember: `/dev/` -> "Devices"
* `/etc/`: system wide config files
	* Remember: `/etc/` -> "Edit to Configure"
	* `/etc/opt/`: config files for add-on packages stored in `/opt/`
* `/home/`: location of user home directories
* `/lib/`: Libraries essential for the binaries in `/bin/` and `/sbin/`
	- Remember: `/lib/` -> "Libraries"
	- May be a symlink to `/usr/lib/`
* `/lib<qual>/`: Alternate format essential libraries (like lib64 for 64-bit)
	- May be a symlink to `/usr/lib<qual>/`
* `/mnt/`: location of mounted filesystems (user controlled) such as usb drives or external HDDs
	- Remember: `/mnt/` -> "Mount"
* `/media/`: location of mounted filesystems (usually system/distro controlled)
* `/opt/`: location of application software packages
	- Remember: `/opt/` -> "Optional"
	- Good place to install manually installed user or vendor packages
* `/proc/`: Virtual filesystem providing process and kernel information as files
	- Remember: `/proc/` -> "Processes"
	- Houses psuedo-files that contain information about system processes and resources
* `/root/`: Home directory for the root/super user
	- Remember: `/root/` -> "Root Home"
	- The root's home directory is pretty different from a standard user's home
	- It doesn't have the typical directories a standard user will
	- Need root permissions to acces this directory
* `/run/`: Run-time variable data: Information about the running system since last boot, e.g., currently logged-in users and running daemons
	- Remember: `/run/` -> "Runtime"
	- This holds a tempfs filesystem so it runs in RAM, everything in it is gone after shutdown
* `/sbin/`: Essential system binaries (used for booting in root / single user mode)
	- Remember: `/sbin/` -> "Single User Binaries"
	- May be a symlink to `/usr/sbin` or `/usr/bin/`
* `/srv/`: Service directory
	- Remember: `/srv/` -> "Service Files"
	- Mainly used by servers to allow easy access / mounting by client machines
* `/sys/`: Contains information about devices, drivers, and some kernel features
	- Remember: `/sys/` -> "System"
	- Created fresh on each boot
* `/tmp/`: Temporary files for programs (such as session data for a user application)
	- Remember `/tmp/` -> "Temporary"
	- Usually emptied on reboot
* `/usr/`: Secondary hierarchy for read-only user data; contains the majority of (multi-)user utilities and applications. Depending on your system this may effectively hold all or most important shared binaries and libraries because `/bin/`, `/sbin/`, `/lib/`, and/or `/lib64/` may be symlinked to subdirectories of `/usr/`
	- Remember: `/usr/` -> "Unix System Resources" (NOT "user")
	- `/usr/bin/`: non-essential command binaries for all users
	- `/usr/sbin/`: non-essential system binaries
	- `/usr/lib/`: Libraries for the binaries in `/usr/bin/` and `/usr/sbin/`
	- `/usr/lib<qual>/`: Alternate format of `/usr/lib/` libraries
	- `/usr/share/`: May hold package relevant files such as state, config, or binaries
	- `/usr/local/`: Location of "local" packages (such as user packages), this directory mirrors the structure of the root `/bin/`, `/sbin/`, `/lib/`, and so on. The system package manager(s) usually don't put packages here so it could be a good place for users to manaully install and manage packages (similar to `/opt/`).
		- `/usr/local/bin/`: Location of local binaries
		- `/usr/local/sbin/`: Location of local binaries
		- `/usr/local/sbin/`: Location of local source files
		- `/usr/local/lib/`: Location of local libraries
		- `/usr/local/man/`: Location of local manpages
* `/var/`: Variable files—files whose content is expected to continually change during normal operation of the system—such as logs, spool files, and temporary e-mail files
	- Remember: `/var/` -> "Variables"
	- Contains files and directories that are expected to grow in size such as logs, email databases, and printer queues

# Home Directory
* This list is of course not exhaustive, but contains common files/directories and conventions across most linux distros
* Information about home directory arrangement is not technically part of the FHS, but there are common conventions that will be described here
* Dotfiles are hidden files or directories often used for configuration of the shell, graphical environments, or user applications
* Configuration of various shells and most general graphical environment configuration is kept at the root of the user home directory
* Most user application configuration is kept in the `/home/<user>/.config/` directory (the usual setting of `$XDG_CONFIG_HOME`) though some may be at the root of the user home directory

## Directories
* `/home/<user>/`: The root of the home directory for <user>
* `/home/<user>/.cache/`
	- User application cache directory
* `/home/<user>/.config/`
	- User application configuration directories/files are kept here
* `/home/<user>/.local/`
	- `/home/<user>/.local/share/`
	- `/home/<user>/.local/bin/`
		- Optional directory for user binaries (ie user scripts) that you can add
		- If you add this directory, make sure to modify your `PATH` variable

## Dotfiles
* `/home/<user>/.bash_history`
* `/home/<user>/.bash_logout`
* `/home/<user>/.bash_profile`
* `/home/<user>/.bashrc`
* `/home/<user>/.inputrc`
* `/home/<user>/.profile`
* `/home/<user>/.python_history`
* `/home/<user>/.tmux.conf`
* `/home/<user>/.viminfo`
* `/home/<user>/.Xdefaults`
* `/home/<user>/.xinitrc`
* `/home/<user>/.xprofile`
* `/home/<user>/.Xresources`
* `/home/<user>/.xsession`
* `/home/<user>/.xonshrc`
* `/home/<user>/.zprofile`

