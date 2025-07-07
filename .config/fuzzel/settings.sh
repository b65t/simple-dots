choice=$(echo -e "power\nstuff-fix" | fuzzel --dmenu)

case $choice in
    "power") ~/.config/fuzzel/power.sh ;;
    "stuff-fix") ~/waybar.sh ;
		  ;;
    *) echo "No option selected" ;;
esac
