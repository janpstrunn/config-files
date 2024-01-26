# ~/.bashrc
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias install='sudo pacman -S $1'
alias remove='sudo pacman -Rns $1'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syu'
set -o vi
PS1="\e[38;5;51m[\u@\h \W]\$ \e[m "
HISTTIMEFORMAT="%F %T "
