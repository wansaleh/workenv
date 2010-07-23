# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth
export HISTSIZE=5000

# append to bash_history if Terminal.app quits
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# my customizations
function myshortcuts
{
	alias s='sudo'
	alias ll='ls -al'
	alias la='ls -A'
	alias l='ls -CF'
	alias c='clear'
	alias lsd="ls -l | grep ^d"
	
	#perl cpan
	alias updatecpan="perl -MCPAN -e 'CPAN::Shell->install(CPAN::Shell->r)'"
	
}

function mystyles
{
	local BLACK="\[\033[0;30m\]"
	local DARKGRAY="\[\033[1;30m\]"
	local BLUE="\[\033[0;34m\]"
	local LIGHTBLUE="\[\033[1;34m\]"
	local GREEN="\[\033[0;32m\]"
	local LIGHTGREEN="\[\033[1;32m\]"
	local CYAN="\[\033[0;36m\]"
	local LIGHTCYAN="\[\033[1;36m\]"
	local RED="\[\033[0;31m\]"
	local LIGHTRED="\[\033[1;31m\]"
	local PURPLE="\[\033[0;35m\]"
	local LIGHTPURPLE="\[\033[1;35m\]"
	local BROWN="\[\033[0;33m\]"
	local YELLOW="\[\033[1;33m\]"
	local LIGHTGRAY="\[\033[0;37m\]"
	local WHITE="\[\033[1;37m\]"

	export PS1="${GREEN}\u@\h ${BROWN}\w${LIGHTGRAY} $ "
}

myshortcuts
mystyles