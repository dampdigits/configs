# ~/.bash_aliases: Contains the alias definitions for ~/.bashrc

## Basic navigation ##
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# alias mkdir='mkdir -pv'  # Create directory, verbose, create parents automatically

#########################################################################################################

## Listing contents ##
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias la='ls -A'         # list all except . and ..
alias ll='ls -lh'       # long list, human readable
alias lla='ls -lAh'      # long list, almost all hidden files
alias ls='ls --color=auto --group-directories-first'
alias vdir='vdir --color=auto'

#########################################################################################################

## System operations ##
alias refresh='source ~/.bashrc'
alias please='sudo $(history -p !!)'                # Retry last command with sudo
alias ports='sudo netstat -tulanp'                  # See open ports
alias psg='ps aux | grep -i'                        # Search processes
alias own='sudo chown -R $USER:$USER .'             # Take ownership of current directory
alias rm='mv -t ~/.local/share/Trash/'              # Moves to Trash instead of delete (needs `Trash/` set up)

#########################################################################################################

## Networking ##
alias ip='ip a'                    # Show IP addresses
alias myip="curl ifconfig.me"       # Public IP
alias ping='ping -c 5'              # Only 5 pings
alias speedtest='speedtest-cli'     # Requires `speedtest-cli`

#########################################################################################################

## Git ##
alias git_undo='git reset --soft HEAD~1'  # Undo last commit, keep changes

#########################################################################################################

# Dev Tools ##
alias activate='source venv/bin/activate'

#########################################################################################################


# Author: dampdigits <dampdigits@gmail.com>

