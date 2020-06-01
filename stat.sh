#!/bin/sh

FIFO="/tmp/dvtm-status.$$"

[ -p "$FIFO" ] || mkfifo -m 600 "$FIFO" || exit 1

while true; do
	echo $(echo -n " Current Song : $(cat song.info) Vol: $(pulsemixer --get-volume | awk '{print $1}') " && echo -n "  " && acpi | awk '{print $4}' && date '+ %d %B %A %H:%M')
   	sleep 1
done > "$FIFO" &

STATUS_PID=$!
dvtm htop zsh -s "$FIFO" "$@" 2> /dev/null
kill $STATUS_PID
wait $STATUS_PID 2> /dev/null
rm -f "$FIFO"

