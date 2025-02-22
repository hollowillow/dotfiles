#!/bin/sh

xdotool type $(
        #removes blank and commented line, but keeps comments at
        #the end of a line, for dmenu to display it properly
        sed "/^#/ d; /^$/ d" $HOME/.config/newsboat/urls |
        dmenu -i -l 20 |
        cut -d' ' -f1
)
