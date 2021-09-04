#!/bin/sh

set -x

url=$1

xdotool type "i"

# base_url=$(echo $url | awk -F/ '{print $3}' | awk -F. '{printf "%s.%s\n", $2, $3}')
base_url=$url

users=$(pass | grep -v "├" | grep -v "^└" | grep -o "[a-zA-Z].*$" | tail -n +2 | sort | uniq)
user=$(echo "$users" | dmenu)

# users=$(pass ls $base_url | tail -n +2 | cut -c 11-)
# n_users=$(echo "$users" | wc -l)
# echo $n_users
# if [ "$n_users" -gt 1 ]
# then
#     user=$(echo "$users" | dmenu -l 5 -p "choose a user to get password for")
# else
#     user=$users
# fi

xdotool type "$user"

xdotool key Tab

pass=$(pass generate "$base_url/$user")
# xdotool type "$pass"

# xdotool key Tab
# xdotool key Return

echo "$pass" | xclip -selection clipboard
