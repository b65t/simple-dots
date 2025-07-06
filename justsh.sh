set -e

case "$1" in
	setup)
		stow .
		chmod +x ~/simple-dots/.config/river/*
		chmod +x ~/simple-dots/.config/fuzzel/*
	;;
        unsetup)
		stow -D ~/simple-dots/
	;;
        dep)
		case "$2" in
			alpine)
				doas apk add stow river xdg-desktop-portal waybar mako swaybg fish
				case "$3" in
					full)
						doas apk add linux-firmware neovim pcmanfm firefox fill-roller flatpak
					;;
			        esac
			;;
	        esac
	;;
        *)
		echo "usage of $0:"
		echo "$0 setup: setup the dotfiles"
		echo "$0 unsetup: delete the dotfiles"
		echo "$0 dep: install deps:"
		echo "              alpine: install deps for alpine linux:"
		echo "                full: install all apps that i use and need"
esac

exit 0
