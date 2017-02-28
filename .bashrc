#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi
alias vi='vim'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias ping='ping -c 4'
alias grep='grep --color=auto'
alias sudo='sudo -E'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[m\] '
complete -cf sudo
complete -cf man
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
