#!/bin/sh

set -e

url=$1

echo "$url" > /tmp/qute.txt

xdotool type "i"

# base_url=$(echo $url | awk -F/ '{print $3}' | awk -F. '{printf "%s.%s\n", $2, $3}')
base_url=$url
base_url=$(echo "$url" | awk -F. '{printf "%s.%s", $(NF-1), $NF}')

notify-send "$base_url"

users=$(/usr/bin/ls "$PASSWORD_STORE_DIR/$base_url" | rev | cut -c 5- | rev)
n_users=$(echo "$users" | wc -l)
echo "$n_users"
if [ "$n_users" -gt 1 ] && [ "$2" = "choose" ]
then
    user=$(echo "$users" | dmenu -l 5 -p "choose a user to get password for")
else
    user=$(echo "$users" | head -n 1)
fi

[ "$3" = "no_user" ] || xdotool type --delay 10 "$user"

[ "$3" = "no_user" ] || xdotool key Tab

touch "$PASSWORD_STORE_DIR"/"$base_url"/"$user".gpg
password=$(pass "$base_url"/"$user")
xdotool type --delay 15 "$password"

# xdotool key Tab
# xdotool key Return
