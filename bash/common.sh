#!/bin/bash

# Listing aliases
alias ll="ls -lah"

# Set up a HTTP server using PHP simple server (requires php >= 5.5)
alias phpServer="php -S localhost:8080"

# Set up a HTTP server using Python simple server
alias pythonServer="python -m SimpleHTTPServer 8080"

# Screen aliases
alias screen12="screen -c ~/.bash_plugins/screen-layouts/screen1x2" # Screen 1row  x 2columns
alias screen21="screen -c ~/.bash_plugins/screen-layouts/screen2x1" # Screen 2rows x 1column
alias screen22="screen -c ~/.bash_plugins/screen-layouts/screen2x2" # Screen 2rows x 2columns
alias screen14="screen -c ~/.bash_plugins/screen-layouts/screen1x4" # Screen 1row  x 4columns
alias screen41="screen -c ~/.bash_plugins/screen-layouts/screen4x1" # Screen 4rows x 1column

if [ -f ~/.bash/aliases ]; then
  source ~/.bash/aliases
fi
