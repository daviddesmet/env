#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# POWERLEVEL9K SETTINGS
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_middle'

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator ssh dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='green'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='black'
#POWERLEVEL9K_OS_ICON_BACKGROUND='166'
#POWERLEVEL9K_OS_ICON_FOREGROUND='white'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_TIME_FORMAT='%D{%T}'

# Disable dir/git icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Version control settings
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=''
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'		# ±
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25cf'	# ●
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'		# ±
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'	# ↓
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'	# ↑

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Functions
glog() {
	setterm -linewrap off

	git --no-pager log --all --color=always --graph --abbrev-commit --decorate \
	--format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' | \
		sed -E \
		-e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+ /├\1─╮\2/' \
		-e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m /\1├─╯\x1b\[m/' \
		-e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+/├\1╮\2/' \
		-e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m/\1├╯\x1b\[m/' \
		-e 's/╮(\x1b\[[0-9;]*m)+\\/╮\1╰╮/' \
		-e 's/╯(\x1b\[[0-9;]*m)+\//╯\1╭╯/' \
		-e 's/(\||\\)\x1b\[m   (\x1b\[[0-9;]*m)/╰╮\2/' \
		-e 's/(\x1b\[[0-9;]*m)\\/\1╮/g' \
		-e 's/(\x1b\[[0-9;]*m)\//\1╯/g' \
		-e 's/^\*|(\x1b\[m )\*/\1⎬/g' \
		-e 's/(\x1b\[[0-9;]*m)\|/\1│/g' \
		| command less -r +'/[^/]HEAD'

	setterm -linewrap on
}

find() {
	if [ $# = 1 ];
	then
		command find . -iname "*$@*"
	else
		command find "$@"
	fi
}

# Customize to your needs...
if [ -f /usr/local/bin/neofetch ]; then neofetch; fi

#prompt_context () { }
#DEFAULT_USER="$USER"
#USER_NAME="$USER"
