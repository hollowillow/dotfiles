#!/bin/sh

choices="youtube\ngit\nother"
chosen=$(echo -e "$choices" | dmenu -i)
bmdir="$HOME/notes/bookmarks/"

case "$chosen" in
        "youtube") xdotool type $(sed "/^#/ d; /^$/ d" $bmdir/youtube | dmenu -i -l 20 | cut -d' ' -f1);;
        "git") xdotool type $(sed "/^#/ d; /^$/ d" $bmdir/git | dmenu -i -l 20 | cut -d' ' -f1);;
        "other") xdotool type $(sed "/^#/ d; /^$/ d" $bmdir/other | dmenu -i -l 20 | cut -d' ' -f1);;
esac 

notify-send "Bookmark pasted."
