# ------------------------------------------------------------------------------
# Terminal Settings
# ------------------------------------------------------------------------------

# Set the terminal type for color handling
export TERM="xterm-256color"

# Set nvim as the default editor
export EDITOR='nvim'

# Set quitebrowser as the default browser
export BROWSER="qutebrowser"


# Set the path for the history file
HISTFILE=~/.zsh_history

# Set the maximum number of commands to save in history
HISTSIZE=10000

# Set the number of commands to save from history when the shell exits
SAVEHIST=10000

# Disable nice-ing background tasks
# This means that background tasks will not have their priority adjusted and 
# will run with the same priority as foreground tasks.
setopt NO_BG_NICE

# Disable shell termination when the controlling terminal is closed (no hangup)
# It means that even if the terminal is closed or the connection is lost, the 
# shell process will continue running instead of being terminated. 
setopt NO_HUP

# Disable beeping when attempting to complete an ambiguous or empty word list
setopt NO_LIST_BEEP

# Allow functions to have local options
setopt LOCAL_OPTIONS

# Enable history verification before executing a command from history
setopt HIST_VERIFY

# Share command history between sessions
# This means that commands entered in one session will be saved to the shared 
# history file and can be accessed and reused in other sessions.
setopt SHARE_HISTORY

# Enable command substitution in prompts
setopt PROMPT_SUBST

# Enable command spelling correction
setopt CORRECT

# Enable completion within words, not just at word boundaries
setopt COMPLETE_IN_WORD

# Ignore the end-of-file character (Ctrl+D) to avoid accidental shell exit
setopt IGNORE_EOF

# Append new history entries to the history file
setopt APPEND_HISTORY

# Incrementally append new history entries and share them across sessions
setopt INC_APPEND_HISTORY SHARE_HISTORY

# Don't record duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS

# Reduce consecutive blank lines in history to a single blank line
setopt HIST_REDUCE_BLANKS


# ------------------------------------------------------------------------------
# Oh-my-zsh Configuration
# ------------------------------------------------------------------------------

export zsh_config_dir="$HOME/.config/zsh"

# Path to my oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme configuration
# TBD: powerlevel9k seems to be legacy and powerlevel10k should be used
# instead...
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k specific settings
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# Enabled plugins
plugins=(git)

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh



# ------------------------------------------------------------------------------
# Aliases and Functions
# ------------------------------------------------------------------------------

# Load alias files including possible functions
source "$HOME/.zsh/aliases/aliases-apt.zsh"
source "$HOME/.zsh/aliases/aliases-dotfiles.zsh"
source "$HOME/.zsh/aliases/aliases-general.zsh"
source "$HOME/.zsh/aliases/aliases-git.zsh"
source "$HOME/.zsh/aliases/aliases-misc.zsh"
source "$HOME/.zsh/aliases/aliases-nvim.zsh"
source "$HOME/.zsh/aliases/aliases-programming.zsh"
source "$HOME/.zsh/aliases/aliases-tmux.zsh"
source "$HOME/.zsh/aliases/aliases-zsh.zsh"

source "$HOME/.zsh/functions/functions-custom.zsh"
source "$HOME/.zsh/functions/functions-devices.zsh"

# ------------------------------------------------------------------------------
# Keybindings
# ------------------------------------------------------------------------------

# Set vi keybindings in Zsh shell for command line editing
bindkey -v

# ------------------------------------------------------------------------------
# Path Variables
# ------------------------------------------------------------------------------

# Add the directory for custom scripts to the beginning of the PATH variable
export PATH="$HOME/.local/scripts:$PATH"

# ------------------------------------------------------------------------------
# PRIVATE FILE IMPORTS
# ------------------------------------------------------------------------------

# WARNING: The following file contain private data that should not be  exposed 
# publicly such as MAC adresses and API keys.
# Make sure not to include this file in your public GitHub repository or other 
# public dotfiles!

source ~/.zsh-private.zsh
