#!/bin/bash

bookmark="$(xclip -o)"
file="$HOME/Nextcloud-public/snippets"

if grep -q "^$bookmark$" "$file"; then
    notify-send "Oops " "Already bookmarked"
else
    notify-send "Bookmark added!" "$bookmark is now saved to the file"
    echo "$bookmark" >> "$file"
fi


