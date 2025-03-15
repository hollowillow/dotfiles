#!/bin/sh
# 
# script: bookmark.sh
# description: a simple, extensible, POSIX compliant bookmarking shell script
# dependencies: dmenu, xdotool, xclip (any other menu, key typing, and clipboard tool can work if the script is modified)
# optional dependencies: rofi, fzf, libnotify
# github: https://github.com/hollowillow/dotfiles
#

###### DEFAULTS ######

# default input/output file
file="$HOME/bookmarks.md"

# default menu, needs to end with a prompt argument
# empty lines and comments are not shown in the menu, the string you want to have must have no spaces
# anything after the first space is only useful as metadata for searching within the menu
menu="dmenu -i -l 20 -p"

# default action
action="pasteBookmark"


###### FUNCTIONS ######

helpMessage() {

printf "bookmark.sh is a simple, extensible, POSIX compliant boookmarking shell script
Github: https://github.com/hollowillow/dotfiles\n 
\tUsage: bookmark.sh [options] [arguments]\n 
OPTIONS\n 
\t-h\tDisplay this help message
\t-m\tChoose menu selector 
\t\t[dmenu|rofi|fzf] (default: dmenu)
\t-a\tChoose an action, when adding a bookmark uses text copied in clipboard by default 
\t\t[paste|add|remove|open] (default: paste) 
\t-f\tChoose a file, multiple files can be chosen by wrapping all the filepaths with quotes
\t\t(default: \$HOME/bookmarks.md)\n
EXAMPLES\n
\tbookmark.sh\t\t\tPastes a bookmark from \$HOME/bookmarks.md chosen with dmenu
\tbookmark.sh -m rofi -a add\tBookmarks text copied in clipboard to \$HOME/bookmarks.md with added metadata via rofi
\tbookmark.sh -f \"file1 file2\"\tAsks which file you want to select via dmenu and then pastes from said file\n \n"

}

addBookmark() {
        # default: bookmark what is copied in clipboard '-selection clipboard'
        # for bookmarking highlited selection use '-selection primary'
        bookmark=$(xclip -o -selection clipboard)
        if grep -q "^$bookmark" "$file"; then
                notify-send "Already bookmarked!"
        else
                #using the menu you can type in metadata to your bookmark that can be useful when searching for it
                printf "%s\n" "$bookmark $(printf '\n' | ${menu} 'Add metadata: ')" >> "$file"
                notify-send "Bookmark $bookmark added to $file."
        fi
}

pasteBookmark() {
        bookmark=$(sed "/^#/ d; /^$/ d" "$file" | ${menu} "Select bookmark: " | cut -d' ' -f1)
        # default: automatically out the bookmark using 'xdotool type'
        # for copying it into your clipboard use 'xclip -i'
        xdotool type "$bookmark"
        notify-send "Bookmark $bookmark pasted."
}

removeBookmark() {
        bookmark=$(sed "/^#/ d; /^$/ d;" "$file" | ${menu} "Select bookmark: " | cut -d' ' -f1)
        sed -i "\|$bookmark| d;" "$file"
        notify-send "Bookmark $bookmark removed from $file."
}

openBookmark() {
        # default: choices for open option 'mpv --fs\nfirefox\nxdotool type'
        # to add more options, simply type the command you want and separte it with '\n'
        open="firefox\nmpv --fs\nxdotool type"
        bookmark=$(sed "/^#/ d; /^$/ d" "$file" | ${menu} "Select bookmark: " | cut -d' ' -f1)
        $(printf "%s$open" | ${menu} "Open with: ") "$bookmark"
        notify-send "Bookmark $bookmark opened."
}

###### OPTIONS ######

while getopts "hm:a:f:" argument 2>/dev/null; do
        case "${argument}" in
                h) helpMessage && exit 0;;
                
                ### MENU ###
                # set a different command than default for selection, needs to end with a prompt argument
                m) case "${OPTARG}" in 
                        dmenu) menu="dmenu -i -l -p";;
                        rofi) menu="rofi -dmenu -i -window-title bookmark.sh -p";;
                        # fzf has to run within a terminal, not usable systemwide
                        fzf) menu="fzf --header=bookmark.sh --bind=enter:replace-query+print-query --prompt";;
                        *) menu=${OPTARG};;
                   esac;;

                ### ACTION ###
                a) case "${OPTARG}" in
                        paste) action="pasteBookmark";;
                        add) action="addBookmark";;
                        remove) action="removeBookmark";;
                        open) action="openBookmark";;
                   esac;;

                ### FILE ###
                # first checks for a space in the argument string to determine if there are multiple files
                # if so, let's you select a file in the menu, else uses the single file
                # this could be done via [[ =~ ]] however that is not POSIX compliant, and so a case statement is used
                # sometimes parsing multiple files produces unexpected results if -f isn't the last option
                # to parse in all the files from a directory you can use -f "$(printf '%s ' path/to/directory/*)"
                f) space="* *" && case "${OPTARG}" in
                        $space) set -- "${OPTARG}" && for files in "$@"; do
                                        file="$(printf '%s\n' $files | ${menu} 'Select file: ')"
                                done;;
                        *) file="${OPTARG}";;
                   esac;;

                *) printf "%s\n" "Error: Unknown option" && exit 0;;
        esac
done

###### RUN ######

${action}
