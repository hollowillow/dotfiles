#!/bin/sh

categories="youtube\ngit\nother"
chosen=$(echo -e "$categories" | dmenu -i -p "Select category: ")

bookmark=$(xclip -o -selection clipboard)

case "$chosen" in
        "youtube") file="$HOME/notes/bookmarks/youtube" ;;
        "git") file="$HOME/notes/bookmarks/git" ;;
        "other") file="$HOME/notes/bookmarks/other" ;;
esac

if grep -q "^$bookmark$" "$file"; then
        notify-send "Already bookmarked!"
else 
        echo "$bookmark" >> "$file"
        notify-send "$bookmark added to $file."
fi

#to do:
#add functionality for adding tags/title to the end of the line after the link via dmenu
