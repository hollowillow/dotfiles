#!/bin/sh

choices="youtube\ngit\nother"
chosen=$(echo -e "$choices" | dmenu -i)
bmdir="$HOME/notes/bookmarks"

bookmark=$(xclip -o -selection clipboard)

case "$chosen" in
        "youtube") 
                if grep -q "^$bookmark$" "$bmdir/youtube"; then 
                        notify-send "Already bookmarked!"
                else 
                        echo "$bookmark" >> "$bmdir/youtube"
                        notify-send "$bookmark added."
                fi;;

        "git") 
                if grep -q "^$bookmark$" "$bmdir/git"; then 
                        notify-send "Already bookmarked!"
                else 
                        echo "$bookmark" >> "$bmdir/git"
                        notify-send "$bookmark added."
                fi;;

        "other") 
                if grep -q "^$bookmark$" "$bmdir/other"; then 
                        notify-send "Already bookmarked!"
                else 
                        echo "$bookmark" >> "$bmdir/other"
                        notify-send "$bookmark added."
                fi;;
esac
