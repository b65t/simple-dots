case "$1" in 
	full)
		grim -| wl-copy --type image/png && notify-send "Screenshot taken" "check your clipboard"
	;;
        partial)
		grim -g "$(slurp)" - | wl-copy --type image/png && notify-send "Screenshot taken" "check your clipboard"
	;;
esac

exit 0
