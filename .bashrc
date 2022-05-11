#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias ls='ls --color=auto'

# Color mapping
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\001\033[0;32m\002'
GREEN='\[$(tput setaf 2)\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[0m\]'
RESET="$(tput sgr0)"

neofetch
source ~/.git-prompt.sh
export PS1='\@\[$(tput sgr0)\] \e[91m\]$(__git_ps1 "(%s)")\e[32m\] \W \e[00m\]'
