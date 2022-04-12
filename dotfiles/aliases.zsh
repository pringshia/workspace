alias  v='f -e vim'
alias  u='cd .. && l'
alias  l='pwd && ls -Glap'

alias  gs='git status'
alias  gd='git diff'
alias gds='git diff --staged'
alias  gh='git log --pretty=format:"%Cred%h%Creset %ad | %Cgreen%s%Creset%C(yellow)%d%Creset [%an]" --graph --date=short --all'

# DOTFILES
# --------
export EDITOR=vim
alias reload='source ~/dotfiles/aliases.zsh'
alias ea='$EDITOR ~/dotfiles/aliases.zsh && reload'
alias ee='$EDITOR ~/dotfiles/env.zsh'
