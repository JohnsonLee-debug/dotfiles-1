a=4
while [ $a -le 4 ]
 do 
echo $(echo -n "Current Song : $(cat ~/song.info)	| Vol: $(pulsemixer --get-volume | awk '{print $1}') | " && echo -n " " && acpi | awk '{print $4} ' && echo -n " | " && date '+ %d %B %A %H:%M')
sleep 1.5 
done

