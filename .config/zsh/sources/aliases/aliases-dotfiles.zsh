alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

# dotfiles aliases similar to git aliases
alias ds="dotfiles status"
alias da="dotfiles add"
alias dc="dotfiles commit"
alias dd="dotfiles diff"
alias dds="dotfiles diff --staged"
