# Enhanced listing: show hidden files, human-readable sizes, and list in long format
alias ll="ls -lah"

# Colorize grep search output
alias grep="grep --color=auto"

# Make directories, including necessary parent directories, and display verbose output
alias mkdir="mkdir -pv"

# Use colordiff, a tool that colorizes diff output, as the default diff command
alias diff="colordiff" # requires colordiff package

# Search command history
alias histg="history | grep" # search history

# Shortcuts for navigating up directory levels
alias ..="cd .."              # Go up one directory level
alias ...="cd ../.."          # Go up two directory levels
alias ....="cd ../../.."      # Go up three directory levels
alias .....="cd ../../../.."  # Go up four directory levels

# Launch Qutebrowser
alias browser="qutebrowser"

# Clear the terminal
alias c="clear"

# Quickly shutting down the system
alias off="sudo shutdown now"

# Rebooting the system
alias rb="sudo reboot"

# Signing out from the i3 wm
alias out="i3-msg exit"
