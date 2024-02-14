[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias install='sudo pacman -S $1'
alias remove='sudo pacman -Rns $1'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syu'
alias die='sudo shutdown now'
alias nethunter='nmap -v -sn 192.168.0.1/24 | grep -v "host down"'
alias weather='curl http://wttr.in'
set -o vi
PS1="\e[38;5;51m[\u@\h \W]\$ \e[m "
HISTTIMEFORMAT="%F %T "
eval "$(starship init bash)"
#source $HOME/Development/start-completion
