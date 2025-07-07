choice=$(echo -e "poweroff\nrestart\nlock" | fuzzel --dmenu)

case $choice in
    "poweroff") doas poweroff  ;;
    "restart") doas restart ;;
    "lock") swaylock ;
		  ;;
    *) echo "No option selected" ;;
esac
