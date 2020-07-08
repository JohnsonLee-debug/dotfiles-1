echo "$(ls ~/Music/All/)"| rofi -dmenu | xargs -r -I {} echo {} > song.info
notify-send "Now Playing: $(cat song.info)" -t 3000
play ~/Music/All/$(cat song.info)
echo "Nothing Playing" > song.info
