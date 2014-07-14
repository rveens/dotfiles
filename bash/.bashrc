# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

alias ls='ls --color=auto'
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

function prompt {
	# Reset
	local Color_Off='\e[0m'       # Text Reset

	# Regular Colors
	local Black='\e[0;30m'        # Black
	local Red='\e[0;31m'          # Red
	local Green='\e[0;32m'        # Green
	local Yellow='\e[0;33m'       # Yellow
	local Blue='\e[0;34m'         # Blue
	local Purple='\e[0;35m'       # Purple
	local Cyan='\e[0;36m'         # Cyan
	local White='\e[0;37m'        # White

	# Bold
	local BBlack='\e[1;30m'       # Black
	local BRed='\e[1;31m'         # Red
	local BGreen='\e[1;32m'       # Green
	local BYellow='\e[1;33m'      # Yellow
	local BBlue='\e[1;34m'        # Blue
	local BPurple='\e[1;35m'      # Purple
	local BCyan='\e[1;36m'        # Cyan
	local BWhite='\e[1;37m'       # White

	# Underline
	local UBlack='\e[4;30m'       # Black
	local URed='\e[4;31m'         # Red
	local UGreen='\e[4;32m'       # Green
	local UYellow='\e[4;33m'      # Yellow
	local UBlue='\e[4;34m'        # Blue
	local UPurple='\e[4;35m'      # Purple
	local UCyan='\e[4;36m'        # Cyan
	local UWhite='\e[4;37m'       # White

	# Background
	local On_Black='\e[40m'       # Black
	local On_Red='\e[41m'         # Red
	local On_Green='\e[42m'       # Green
	local On_Yellow='\e[43m'      # Yellow
	local On_Blue='\e[44m'        # Blue
	local On_Purple='\e[45m'      # Purple
	local On_Cyan='\e[46m'        # Cyan
	local On_White='\e[47m'       # White

	# High Intensity
	local IBlack='\e[0;90m'       # Black
	local IRed='\e[0;91m'         # Red
	local IGreen='\e[0;92m'       # Green
	local IYellow='\e[0;93m'      # Yellow
	local IBlue='\e[0;94m'        # Blue
	local IPurple='\e[0;95m'      # Purple
	local ICyan='\e[0;96m'        # Cyan
	local IWhite='\e[0;97m'       # White

	# Bold High Intensity
	local BIBlack='\e[1;90m'      # Black
	local BIRed='\e[1;91m'        # Red
	local BIGreen='\e[1;92m'      # Green
	local BIYellow='\e[1;93m'     # Yellow
	local BIBlue='\e[1;94m'       # Blue
	local BIPurple='\e[1;95m'     # Purple
	local BICyan='\e[1;96m'       # Cyan
	local BIWhite='\e[1;97m'      # White

	# High Intensity backgrounds
	local On_IBlack='\e[0;100m'   # Black
	local On_IRed='\e[0;101m'     # Red
	local On_IGreen='\e[0;102m'   # Green
	local On_IYellow='\e[0;103m'  # Yellow
	local On_IBlue='\e[0;104m'    # Blue
	local On_IPurple='\e[0;105m'  # Purple
	local On_ICyan='\e[0;106m'    # Cyan
	local On_IWhite='\e[0;107m'   # White

	PS1="\[${IGreen}\]\u\[${IYellow}\]@\[${IBlue}\]\H\[${IRed}\][\[${IWhite}\]\j\[${IRed}\]]\[${IYellow}\]\w \[${IGreen}\]\$ \[${Color_Off}\]"
	# PS1="\e[32m\u\e[39m@\e[94m\H\e[39m[\e[90m\j\e[39m]\e[93m\w\e[97m \e[32m\$ \e[37m"
}
prompt
