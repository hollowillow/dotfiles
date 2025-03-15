#!/bin/sh
# 
# script: bookmark.sh
# description: a simple, extensible, POSIX compliant bookmarking shell script
# dependencies: dmenu
# optional dependencies: rofi, fzf, libnotify
#

#bookmarks string copied in clipboard
bookmark=$(xclip -o -selection clipboard)
#into a default file
file="default"
#with the default dmenu command, needs to end with a prompt argument
menu="dmenu -i -l 5 -p"

function helpMessage() {
        printf "%sbookmark.sh is a simple, extensible, POSIX compliant boookmarking shell script\n 
        Usage: bookmark.sh [options]\n \nOPTIONS 
        -h\tDisplay this help message
        -f\tChoose file, multiple files can be chosen by wrapping all the filepaths with quotes
        \tor using the -f option multiple times (default: $HOME/bookmark.md)
        -m\tChoose menu selector, must be chosen before any other option [rofi|fzf] (default: dmenu)\n \n"
}

function addBookmark() {
        if grep -q "^$bookmark" "$file"; then
                notify-send "Already bookmarked!"
        else
                #using the menu you can type in metadata to your bookmark that can be useful when searching for it
                printf "%s\n" "$bookmark $(printf '\n' | ${menu} 'Add metadata: ')" >> "$file"
                notify-send "$bookmark added to $file."
        fi
}

# function pasteBookmark() {}
# function removeBookmark() {}

noOpt=1
while getopts "f:s:m:h" argument 2>/dev/null; do
        case "${argument}" in
                h) helpMessage && exit 0;;

                # first checks for a space in the argument string to determine if there are multiple files
                # if so, let's you select a file in the menu, else uses the single file
                f) files+=("$OPTARG") && if [[ "${files[@]}" =~ \ |\' ]]
                        then
                                file="$(printf '%s\n' ${files[@]} | ${menu} 'Select file: ')"
                        else
                                file="${OPTARG}"
                        fi;;

                # set a different command than dmenu for selection, needs to end with a prompt argument
                m) case "${OPTARG}" in 
                        rofi) menu="rofi -dmenu -p";;
                        # fzf has to run within a terminal, not usable systemwide
                        fzf) menu="fzf --header='bookmark.sh' --bind=enter:replace-query+print-query --prompt";;
                   esac;;

                *) printf "%s\n" "Error: Unknown Option" && exit 0;;
        esac
        noOpt=0
done

addBookmark

#run the script with default values if no arguments are selected
#[ $noOpt = 1 ] && addBookmark

#categories="youtube\ngit\nother"
#chosen=$(echo -e "$categories" | dmenu -i -p "Select category: ")
#
#case "$chosen" in
#        "youtube") file="$HOME/.bin/output" ;;
#        "git") file="$HOME/notes/bookmarks/git" ;;
#        "other") file="$HOME/notes/bookmarks/other" ;;
#esac
