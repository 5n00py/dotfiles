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


# Reload .zshrc file
function zshreload() {
	source ~/.zshrc
	echo "Zsh configuration reloaded."
}


