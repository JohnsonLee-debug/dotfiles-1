while [ true ]
do
a=$(date +%H:%M)
echo $a
	if [ $a = "08:30" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "09:10" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "09:50" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "10:30" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "10:50" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "11:20" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "12:00" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "12:40" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	elif [ $a = "13:20" ];
	then
		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
#	elif [ $a = "14:57" ];
#	then
#		sed -i "/$(awk "NR == 1" ~/toDo.list)/d" ~/toDo.list	
	else
		echo "Class in progress"
	fi
	sleep 60
done	
