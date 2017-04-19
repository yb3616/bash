######################## centos 7 自带 ########################
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

######################## 终端 256 色 ##########################
if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

######################## 别名 #################################
alias cp='cp -rv '
alias rm='rm -v'
alias rmdir='rmdir -v'
alias vi='vim'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias ping='ping -c 4'
alias grep='grep --color=auto'
alias sudo='sudo -E'

######################## PS1 主题 ############################# 
GREEN=$(tput setaf 2; tput bold)
BLUE=$(tput setaf 4; tput bold)
RESET=$(tput sgr0)
PS1='\[$GREEN\]\u@\h\[$BLUE\] \W \[$GREEN\]\$\[$RESET\]  '

######################## 根据已有信息补历史命令 ###############
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
