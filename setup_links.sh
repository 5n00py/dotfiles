#!/bin/sh

# Function to create symlink with a backup
create_symlink() {
    local target="$1"
    local link_name="$2"

    # If the file or symlink already exists
    if [ -e "$link_name" ] || [ -L "$link_name" ]; then
        echo "File already exists: $link_name, creating backup."
        
        # Backup the current file
        mv "$link_name" "${link_name}.bak"
    fi

    # Create the symlink
    ln -s "$target" "$link_name"
    echo "Created symlink: $link_name -> $target"
}

# Link .zshrc
create_symlink ~/dotfiles/zsh/zshrc ~/.zshrc

# Link init.lua
create_symlink ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua

# Link lua directory
create_symlink ~/dotfiles/nvim/lua ~/.config/nvim/lua

# Link .tmux.conf
create_symlink ~/dotfiles/tmux/tmux.conf ~/.tmux.conf