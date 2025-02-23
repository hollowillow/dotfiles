#!/bin/sh

categories="youtube\ngit\nother\nchannel"
chosen=$(echo -e "$categories" | dmenu -i -p "Select category: ")

case "$chosen" in
        "youtube") file="$HOME/notes/bookmarks/youtube" ;;
        "git") file="$HOME/notes/bookmarks/git" ;;
        "other") file="$HOME/notes/bookmarks/git" ;;
        "channel") file="$HOME/.config/newsboat/urls" ;;
esac 

#because the urls file in newsboat provides the link to the rss feed not the channel, sed has to replace that string to a channel string instead
xdotool type $(sed "/^#/ d; /^$/ d; s|feeds/videos.xml?channel_id=|channel/|" $file | dmenu -i -l 20 -p "Select bookmark: " | cut -d' ' -f1)
notify-send "Bookmark pasted."

#to do: 
#make another script that concatenates all of these files, for quicker access without choosing categories
