#!/bin/sh

categories="youtube\ngit\nother"
chosen=$(echo -e "$categories" | dmenu -i -p "Select category: ")

bookmark=$(xclip -o -selection clipboard)

case "$chosen" in
        "youtube") file="$HOME/notes/bookmarks/youtube" ;;
        "git") file="$HOME/notes/bookmarks/git" ;;
        "other") file="$HOME/notes/bookmarks/other" ;;
esac

if grep -q "^$bookmark" "$file"; then
        notify-send "Already bookmarked!"
else
        #parsing an empty echo command into dmenu allows you to type anything and have that as the output of dmenu
        echo "$bookmark $(echo  | dmenu -i -p 'Type tags/title: ')" >> "$file"
        notify-send "$bookmark added to $file."
fi

#to do:
#add a new script for removing bookmarks
