#!/bin/sh

xdotool type $(
        cat $HOME/notes/bookmarks/youtube $HOME/notes/bookmarks/git $HOME/notes/bookmarks/other $HOME/.config/newsboat/urls |
        sed "/^#/ d; /^$/ d; s|feeds/videos.xml?channel_id=|channel/|" |
        dmenu -i -l 20 -p "Select bookmark: " |
        cut -d' ' -f1
)
