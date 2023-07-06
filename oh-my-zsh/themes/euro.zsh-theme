# See `man zshmisc` for prompt escapes (%)
# Use 3-bit colors so that they change according to terminal color schemes.

# ZSH_THEME_GIT_PROMPT_PREFIX=" %F{default}("
# ZSH_THEME_GIT_PROMPT_SUFFIX="%F{default})%f"
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# git_prompt_status()
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➼%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭%{$reset_color%}"


# Use single quotes for PROMPT
# https://github.com/robbyrussell/oh-my-zsh/issues/4826

PROMPT='[%F{yellow}%~%f]'

PROMPT+='$(git_prompt_info)'

# https://stackoverflow.com/questions/4466245/customize-zshs-prompt-when-displaying-previous-command-exit-code
#PROMPT+=' %(?.%F{green}.%F{red})$%f '
PROMPT='%{$fg_bold[green]%}%m%{$fg_bold[white]%}:%{$fg_bold[blue]%}%30<...<%~%<<%u%{$reset_color%}$(git_prompt_info) $(git_prompt_status))%{$reset_color%}$%f '
