#
# ~/.dotfiles/.bash/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# if not root, then run with sudo
if [ $UID -ne 0 ]; then
       alias pacman='sudo pacman'       
       alias mount='sudo mount'       
       alias umount='sudo umount'       
       alias fdisk='sudo fdisk'
fi       

# remove duplicate commands from history 
HISTCONTROL=ignoredups

# user specific .bin path
export PATH="$HOME/.bin:$PATH"

# aliases 
alias ls='ls --color=auto --group-directories-first -v'
alias la='ls --color=auto --group-directories-first -Av'
alias ll='ls --color=auto --group-directories-first -lAv'
alias lr='. ranger'
alias vi='nvim'
alias c='clear'
alias h='history'
alias grep='grep --color=auto'
alias ping='ping -c 50 -i .2' #send 50 packets with an interval of .2 seconds
alias newsraft='newsraft -f $HOME/notes/bookmarks/rss'
alias bookmark='bookmark -nq -m fzf -a open -f $HOME/notes/bookmarks'

# safety nets
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# autostart neofetch
neofetch

# use nvim as a pager
export MANPAGER="nvim +Man"

# use vim as a pager
#export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

#LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi "tty*" | uniq | wc -l);
#if [ $LIVE_COUNTER -eq 2 ]; then
#        neofetch
#fi

. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATUS=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[2m\]\u@\h\[\e[0m\] \[\e[38;5;215m\][\[\e[38;5;221m\]\w\[\e[38;5;215m\]]\[\e[0m\]${PS1_CMD1} \[\e[38;5;149m\]>\[\e[0m\] '
#PS1='[\u@\h \W]\$ '
