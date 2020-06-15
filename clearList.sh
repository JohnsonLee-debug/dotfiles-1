a=$(cat ~/options.list | rofi -dmenu )
echo $a
if [[ $a == "YES" ]]
 then
	echo "Schedule:" > ~/toDo.list
	 echo "CLEARED"
elif [[ $a == "NO" ]]
 then
	echo "Cancelled"
else
	echo "Cancelled err"
fi
