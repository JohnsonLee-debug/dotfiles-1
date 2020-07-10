a=$(date | awk '{printf $1}')
echo $a
if [ $a = "Sun" ];
then
	echo "No Class Today!!!"
elif [ $a = "Mon" ];
then
	cp Mon.list toDo.list
	./autoSchedule.sh
elif [ $a = "Tue" ];
then
	cp Tue.list toDo.list
	./autoSchedule.sh
elif [ $a = "Wed" ];
then
	cp Wed.list toDo.list
	./autoSchedule.sh
elif [ $a = "Thu" ];
then
	cp Thu.list toDo.list
	./autoSchedule.sh
elif [ $a = "Fri" ];
then
	cp Fri.list toDo.list
	./autoSchedule.sh
else
	echo "Saturdayyyyy!!!!"
fi


