# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# History
HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
HISTCONTROL=ignoredups

# other
setopt autocd
bindkey -v
zstyle :compinstall filename '/home/hollowillow/.zshrc'

autoload -Uz compinit
compinit

# autostart neofetch
# neofetch

#LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi "tty*" | uniq | wc -l);
#if [ $LIVE_COUNTER -eq 2 ]; then
#        neofetch
#fi
#

colormap(){
        for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Custom Modules
source "$ZDOTDIR/.p10k.zsh"
source "$ZDOTDIR/.plugins.zsh"
source "$ZDOTDIR/.zaliases"

# Plugin list
plugins=(
        romkatv/powerlevel10k
        zsh-users/zsh-autosuggestions
        zsh-users/zsh-syntax-highlighting
)

# Automatically run
plugin-load $plugins

# Load externals if downloaded 
if command -v zoxide >/dev/null 2>&1 ; then
        eval "$(zoxide init --cmd cd zsh)"
fi
if command -v atuin >/dev/null 2>&1 ; then
        eval "$(atuin init zsh)"
fi
if command -v fzf >/dev/null 2>&1 ; then
        eval "$(fzf --zsh)"
fi
