#!/bin/sh

set -x

url=$1

xdotool type "i"

# base_url=$(echo $url | awk -F/ '{print $3}' | awk -F. '{printf "%s.%s\n", $2, $3}')
base_url=$url
base_url=$(echo "$url" | awk -F. '{printf "%s.%s", $(NF-1), $NF}')

notify-send "$base_url"

users=$(pass ls "$base_url" | tail -n +2 | cut -c 11-)
n_users=$(echo "$users" | wc -l)
echo "$n_users"
if [ "$n_users" -gt 1 ] && [ "$2" = "choose" ]
then
    user=$(echo "$users" | dmenu -l 5 -p "choose a user to get password for")
else
    user=$(echo "$users" | head -n 1)
fi

xdotool type "$user"

xdotool key Tab

pass=$(pass "$base_url/$user")
xdotool type "$pass"

# xdotool key Tab
# xdotool key Return
