# Open files with Neovim
alias nv='nvim'

# Open Neovim configuration file
alias nvconfig="nvim ~/.config/nvim/init.lua"

# Create a new file with Neovim
alias nvn='nvim new'

# Define aliases to quickly switch between different colorschemes in Neovim. 
# By typing the alias name in the terminal, the "COLORSCHEME" environment 
# variable is set accordingly. This environment variable is then read by 
# Neovim's init.lua file to set the colorscheme accordingly.
# 
# Note: The changes will only apply to the current terminal session.
alias tokyo='export NVIM_COLORSCHEME="tokyonight"'
alias day='export NVIM_COLORSCHEME="tokyonight-day"'
alias night='export NVIM_COLORSCHEME="tokyonight-night"'
alias storm='export NVIM_COLORSCHEME="tokyonight-storm"'
alias moon='export NVIM_COLORSCHEME="tokyonight-moon"'
alias dark='export NVIM_COLORSCHEME="onedark"'
alias nord='export NVIM_COLORSCHEME="nord"'
