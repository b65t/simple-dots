#!/usr/bin/env sh

WALLPAPER_DIR="/home/islam/Background/"
CHOICE=$(ls "$WALLPAPER_DIR" | grep -E '\.(jpg|png)$' | while read A; do
    echo -e "$WALLPAPER_DIR$A"
done | fuzzel -d -p " Select wallpaper")

[ -z "$CHOICE" ] && { echo "No wallpaper selected"; exit 1; }

# sed -i "s|bg .* fill|bg \"$CHOICE\" fill|" ~/.config/sway/config

pkill swaybg
swaybg -i $CHOICE -m fill &
sed -i "s|riverctl spawn \"swaybg -i .* -m fill\"|riverctl spawn \"swaybg -i \"$CHOICE\" -m fill\"|" ~/.config/river/init
