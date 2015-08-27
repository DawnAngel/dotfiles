#!/bin/bash

# This is only for MacOSX
if [[ $OSTYPE == "darwin"* ]]; then
    ssh-add
fi

# This is only for Linux
# if [[ $OSTYPE == "linux-gnu" ]]; then

# fi


# Listing aliases
alias ll="ls -lah"

# Set up a HTTP server using PHP simple server (requires php >= 5.5)
alias phpServer="php -S localhost:8080"

# Set up a HTTP server using Python simple server
alias pythonServer="python -m SimpleHTTPServer 8080"

# Screen aliases
alias screen12="screen -c ~/screen-layouts/screen1x2" # Screen 1row  x 2columns
alias screen21="screen -c ~/screen-layouts/screen2x1" # Screen 2rows x 1column
alias screen22="screen -c ~/screen-layouts/screen2x2" # Screen 2rows x 2columns
alias screen14="screen -c ~/screen-layouts/screen1x4" # Screen 1row  x 4columns
alias screen41="screen -c ~/screen-layouts/screen4x1" # Screen 4rows x 1column

if [ -f ~/.bash_aliases ]
then
    source ~/.bash_aliases
fi


# Autocomplete SCP/SFTP/SSH commands from $HOME/.ssh/config (Requires ruby)
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/\s/)[1..-1] if $_.match(/^host/);' < $HOME/.ssh/config)" scp sftp ssh

# Git autocomplete (Requires bash-completion)
source ~/git-completion/git-completion.bash
source ~/git-completion/git-prompt.sh

# Git prompt config
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
