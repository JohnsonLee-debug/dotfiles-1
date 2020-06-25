sed -i "/Nothing scheduled/d" ~/toDo.list
cat ~/toDo.list | rofi -dmenu | xargs -r -I {} echo {} >> toDo.list
