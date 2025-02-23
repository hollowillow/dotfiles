#!/bin/bash

choices="duckduckgo\ngoogle\narchwiki\ngentoowiki\nyoutube\ndrivethrurpg\nnixdatabase"
chosen=$(echo -e $choices | dmenu -i -p 'Select engine: ')

case "$chosen" in
        "duckduckgo") engine="https://duckduckgo.com/&q=" ;;
        "google") engine="https://www.google.com/search?q=";;
        "archwiki") engine="https://wiki.archlinux.org/index.php?search=";;
        "gentoowiki") engine="https://wiki.gentoo.org/index.php?title=search&search=";;
        "youtube") engine="https://www.youtube.com/results?search_query=";;
        "github") engine="https://github.com/search?q=";;
        "drivethrurpg") engine="https://www.drivethrurpg.com/en/browse?keyword=";;
        #currently using unstable channel by default, 
        #cause if the versioned channel updates you need to change the string to the correct version numbe
        "nixdatabase") engine="https://search.nixos.org/packages?channel=unstable&from=0&size=50&sort=relevance&type=packages&query=";;
esac

firefox "${engine}$(echo '' | dmenu -p 'Search: ')"
