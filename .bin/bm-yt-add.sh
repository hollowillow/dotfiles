#!/bin/sh

choices="youtube\ngit\nother"
chosen=$(echo -e "$choices" | dmenu -i)
bmdir="$HOME/notes/bookmarks/"

bookmark="$(xclip -o -selection clipboard)"

case "$chosen" in
        "youtube") grep -q "^$bookmark$" "$file" || echo "$bookmark" >> "$bmdir/youtube"
        "git") grep -q "^$bookmark$" "$file" || echo "$bookmark" >> "$bmdir/youtube"
        "other") grep -q "^$bookmark$" "$file" || echo "$bookmark" >> "$bmdir/youtube"
esac
