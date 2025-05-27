# ~/.bashrc: executed by bash(1) for non-login shells (i.e. terminal window inside graphical environment)

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

#########################################################################################################

## HISTORY ##
# Don't put duplicate lines in the history. See bash(1) for more options.
# Don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups

# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1).

#########################################################################################################

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#########################################################################################################

## Aliases ##
# If ~/.bash_aliases file exists, source it (load it).
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#########################################################################################################

## Environment variables ##
export CDPATH=:$HOME/projects/dampdigits/
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

#########################################################################################################

# Load Starship prompt
eval "$(starship init bash)"

# Author: dampdigits <dampdigits@gmail.com>
