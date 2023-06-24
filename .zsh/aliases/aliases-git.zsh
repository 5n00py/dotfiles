# Display a compact, one-line per commit version of the commit log
alias gl='git log --oneline'

# Show the status of the working tree
alias gs='git status'

# Add files to the next commit
alias ga='git add'

# Add all changes in the working tree to the next commit
alias gaa='git add .'

# Add all modified and deleted files excluding untracked files
alias gau='git add --update'

# Commit changes
alias gc='git commit'

# Commit changes with message
alias gcm='git commit -m '

# Display the diff of what is in branch1 that is not in branch2
alias gd='git diff'

# Display the diff of staged changes in neovim
alias gds='git diff --staged'

# Fetch changes from the remote repository
alias gf='git fetch'

# Switch to a different branch
alias gco='git checkout'

# Create a new branch
alias gcb='git checkout -b'

# List all branches
alias gb='git branch'

# Display word diff, using common command-line diff tools' word diff algorithms
alias gwd='git diff --word-diff'

# Stash changes in the working directory
alias gss='git stash save'

# Apply stashed changes back to the working directory
alias gsa='git stash apply'
