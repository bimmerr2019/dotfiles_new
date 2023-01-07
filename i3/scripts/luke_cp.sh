#!/bin/sh

xdotool type $(grep -v '^#' ~/Nextcloud2/snippets | dmenu -i -l 50 | cut -d' ' -f1)
