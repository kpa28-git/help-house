# pacman+yay


# Install and Configure
## Install Yay
- Assuming you do not already have a AUR helper, you must install Yay manually:
- `git clone https://aur.archlinux.org/yay-bin.git`
- `cd yay-bin`
- `makepkg -si`

## Pacman/Yay Config Files
- `/etc/pacman.conf`
- `$HOME/.config/yay/config`

## Pacman/Yay Hooks
- `/usr/share/libalpm/hooks/`
- More hook directories can be specified in `/etc/pacman.conf`, by default it's set to `/etc/pacman.d/hooks`; this is where most user-added hooks go

## Pacman Mirrorlist
- `/etc/pacman.d/mirrorlist`
- You can use the `reflector` package to update the local mirrorlist based on download speeds:
`sudo reflector --country 'United States' --latest 200 --age 24 --sort rate --save /etc/pacman.d/mirrorlist && rm -f /etc/pacman.d/mirrorlist.pacnew`

## Yay environment variables
- Makepkg environment variables are fully honored (?)

## Yay pacman config
- Some options enabled in /etc/pacman.conf also affect Yay (?)
- Add package upgrade ignores
- Add and remove custom package repos
- Global color / no-color configuration
- Other stuff

# Sources
- `man pacman`
- `man yay`

