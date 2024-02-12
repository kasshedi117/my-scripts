#!/usr/bin/env bash

selected=$( (cut -d ':' -f 1 ~/.local/bin/file ) | rofi -i -dmenu -theme spotlight-dark -p "Select")

if [[ -z $selected ]]; then
    exit 0
fi

selected_value=$(grep "^$selected:" ~/.local/bin/file | cut -d ':' -f 2)

echo -n $selected_value | xclip -selection clipboard
