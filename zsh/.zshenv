export ZDOTDIR="$HOME/.config/zsh"

# PATH ADDITIONS
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/scripts"

# ENVIRONMENT VARIABLES
export TERMINAL='alacritty'
export EDITOR='nvim'
export BROWSER='firefox'
export MANPAGER="nvim +Man! +'set relativenumber'"

# SCRIPT VARIABLES
export WALLPAPERS_DIR="$HOME/.local/share/wallpapers/hd"
export NOTES_DIR="$HOME/notes/zettelkasten"
export BOOKMARK_FILE="$HOME/notes/bookmarks.md"
export SEARCH_HIST_FILE="$HOME/.local/state/search_history"

export FZF_DEFAULT_HEADER='btab:toggle-all  ctrl-a:select-all  ctrl-d:deselect-all  ctrl-t:toggle-preview'
export FZF_DEFAULT_OPTS_FILE="$HOME/.config/fzfrc"
export TERM_MENU="fzf --ansi --color=16 --preview-window=top --prompt"
export GUI_MENU="tofi --prompt-text"
