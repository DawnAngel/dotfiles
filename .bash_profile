#!/bin/bash

clear

# This is only for MacOSX
if [[ $OSTYPE == "darwin"* ]]; then
  if [ -f ~/.bash/profile_macosx ]; then
    source ~/.bash/profile_macosx
  fi
fi

# This is only for Linux
if [[ $OSTYPE == "linux-gnu" ]]; then
  if [ -f ~/.bash/profile_linux ]; then
    source ~/.bash/profile_linux
  fi
fi

if [ -f ~/.bash/profile ]; then
  source ~/.bash/profile
fi

source ~/.bash/common.sh

# Autocomplete SCP/SFTP/SSH commands from $HOME/.ssh/config (Requires ruby)
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/\s/)[1..-1] if $_.match(/^host/);' < ~/.ssh/config)" scp sftp ssh

# AWS completer
if [ -f /usr/local/bin/aws_completer ]; then
  complete -C '/usr/local/bin/aws_completer' aws
fi

# Git autocomplete (Requires bash-completion)
source ~/.bash_plugins/git-completion/git-completion.bash
source ~/.bash_plugins/git-completion/git-prompt.sh

# Git prompt config
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# Angular-cli completion
source ~/.bash_plugins/ng-completion

# NPM completion
source ~/.bash_plugins/npm-completion

# Makefile completion
source ~/.bash_plugins/make-completion

# Kubectl completion
source ~/.bash_plugins/kube-completion
complete -F __start_kubectl k

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Iterm2 API integration
test -e ~/.iterm2_shell_integration.bash && source ~/.iterm2_shell_integration.bash

# Iterm2 Projects script completion
source ~/.bash_plugins/iterm2/project-completion

