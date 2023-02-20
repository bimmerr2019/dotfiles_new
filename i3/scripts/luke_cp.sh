#!/bin/sh

#xdotool type $(grep -v '^#' ~/Nextcloud-public/snippets | dmenu -i -l #50 | cut -d' ' -f1)
xdg-open $(grep -v '^#' ~/Nextcloud-public/snippets | dmenu -i -l 50 | cut -d' ' -f1)
