export TERM="xterm-256color"

# For detailed documentation of this zsh configuration, please refer to the
# zsh-config-doc.pdf file located in the '~/.config/zsh/doc' directory. You can 
# open the documentation by running the command 'zshdoc' after completing the 
# configuration.
#
# Opening this 'zshrc' file for editing can be done by running the 'zshconfig' 
# command. To reload the configuration and apply any changes made to this file 
# or sourced files use the 'zshreload' command.

export zsh_config_dir="$HOME/.config/zsh"

source "$zsh_config_dir/sources/sources.zsh"


# ------------------------------------------------------------------------------
# PRIVATE FILE IMPORTS
# ------------------------------------------------------------------------------

# WARNING: The following file contain private data that should not be  exposed 
# publicly such as MAC adresses and API keys.
# Make sure not to include this file in your public GitHub repository or other 
# public dotfiles!

source ~/.zsh-private.zsh
