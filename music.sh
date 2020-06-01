echo "$(ls ~/Music/All/)"| rofi -dmenu | xargs -r -I {} echo {} > song.info
play ~/Music/All/$(cat song.info)
echo "Nothing Playing" > song.info
