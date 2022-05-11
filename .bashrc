#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

alias ls='ls --color=auto'

shopt -s checkwinsize

neofetch

PS1='\[\e[0m\]\@ \[\e[91m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[32m\]\W\[\e[0m\] '
