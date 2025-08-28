export ZDOTDIR="$HOME/.config/zsh"

# PATH ADDITIONS
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/scripts"

# XDG BASE DIRECTORIES
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

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
export AUTOSTART_DIR="$HOME/.local/share/autostart_profiles"
export RSS_FILE="notes/rss_file"

export FZF_DEFAULT_HEADER='btab:toggle-all  ctrl-a:select-all  ctrl-d:deselect-all  ctrl-t:toggle-preview'
export FZF_DEFAULT_OPTS_FILE="$HOME/.config/fzfrc"
