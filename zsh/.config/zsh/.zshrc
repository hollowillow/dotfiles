# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load Modules
source "$ZDOTDIR/.p10k.zsh" # prompt (requires plugins)
source "$ZDOTDIR/.plugins.zsh" # simple plugin loader
source "$ZDOTDIR/aliases" # aliases
source "$ZDOTDIR/integrations" # integrations like zoxide, atuin and fzf

# History
HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
HISTCONTROL=ignoredups

# other
setopt autocd # cd without having to type cd
bindkey -v # set vi mode
autoload -Uz compinit && compinit # load and initialize completion
