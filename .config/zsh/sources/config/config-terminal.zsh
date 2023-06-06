# Set the terminal type for color handling
export TERM="xterm-256color"

# Set nvim as the default editor
export EDITOR='nvim'

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
