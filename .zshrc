clear

# fpath=(~/.zsh/functions $fpath)

if [ -f ~/.bash/profile ]; then
  source ~/.bash/profile
fi

source ~/.bash/common.sh

export plugins=(
  git
  yarn
#   fzf
)

# Clean up and reload zsh config including completion
# https://github.com/ohmyzsh/ohmyzsh/wiki/FAQ#completion-issues
alias reload_zsh="rm -f ~/.zcompdump* && omz reload"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm

[ -s "~/.kgo.zsh" ] && source ~/.kgo.zsh

