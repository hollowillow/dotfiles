#
# bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# remove duplicate commands from history 
HISTCONTROL=ignoredups

# aliases 
if command -v exa >/dev/null 2>&1 ; then
        alias ls='eza --color=always --icons=always --group-directories-first'
        alias la='eza --color=always --icons=always --group-directories-first --almost-all'
        alias ll='eza --color=always --icons=always --group-directories-first --almost-all --long'
else
        alias ls='ls --color=auto --group-directories-first -v'
        alias la='ls --color=auto --group-directories-first -Av'
        alias ll='ls --color=auto --group-directories-first -lAv'
fi

if command -v ranger >/dev/null 2>&1 ; then
        alias lf='. ranger'
fi

if command -v nvim >/dev/null 2>&1 ; then
        alias vi='nvim'
        alias vim='nvim'
fi

alias c='clear'
alias h='history'
alias grep='grep --color=auto'
alias ping='ping -c 50 -i .2' #send 50 packets with an interval of .2 seconds
alias newsraft='newsraft -f $HOME/notes/bookmarks/rss'
alias bookmark='bookmark -a open -f $HOME/notes/bookmarks'
alias bat='bat --theme base16'

# safety nets
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# autostart neofetch
neofetch

#LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi "tty*" | uniq | wc -l);
#if [ $LIVE_COUNTER -eq 2 ]; then
#        neofetch
#fi

. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATUS=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[91m\]\u@\h\[\e[0m\] \[\e[33m\][\[\e[93m\]\w\[\e[33m\]]\[\e[0m\]${PS1_CMD1} \[\e[92;1m\]>\[\e[0m\] '
#PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[30m\]\u@\h\[\e[0m\] \[\e[33m\][\[\e[93m\]\w\[\e[33m\]]\[\e[0m\]${PS1_CMD1} \[\e[92;1m\]>\[\e[0m\] '
#PS1='[\u@\h \W]\$ '

if command -v zoxide >/dev/null 2>&1 ; then
        eval "$(zoxide init --cmd cd bash)"
fi
if command -v atuin >/dev/null 2>&1 ; then
        eval "$(atuin init bash)"
fi
if command -v fzf >/dev/null 2>&1 ; then
        eval "$(fzf --bash)"
fi
