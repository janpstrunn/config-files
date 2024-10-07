# ~/.bashrc
[[ $- != *i* ]] && return

PS1="\e[38;5;51m[\u@\h \W]\$ \e[m "
HISTTIMEFORMAT="%F %T "
export PATH=$HOME/.local/bin:$PATH

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'

set -o vi

# External Shell Script (not included)
# source $HOME/.commands.sh

eval "$(starship init bash)"
eval "$(zoxide init bash)"
