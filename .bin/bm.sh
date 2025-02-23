#!/bin/sh

categories="youtube\ngit\nother\nchannel"
chosen=$(echo -e "$categories" | dmenu -i)

case "$chosen" in
        "youtube") file="$HOME/notes/bookmarks/youtube" ;;
        "git") file="$HOME/notes/bookmarks/git" ;;
        "other") file="$HOME/notes/bookmarks/git" ;;
        "channel") file="$HOME/.config/newsboat/urls" ;;
esac 

xdotool type $(sed "/^#/ d; /^$/ d; s|feeds/videos.xml?channel_id=|channel/|" $file | dmenu -i -l 20 | cut -d' ' -f1)
notify-send "Bookmark pasted."
