cat ~/toDo.list | rofi -dmenu | xargs -r -I {} echo {} >> toDo.list
