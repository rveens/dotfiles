#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[32m\u\e[39m@\e[94m\H\e[39m[\e[90m\j\e[39m]\e[93m\w\e[97m \e[32m\$ \e[37m'
