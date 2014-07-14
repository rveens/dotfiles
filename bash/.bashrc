#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

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
