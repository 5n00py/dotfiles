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

    # Create the directory of the symlink if not existing
    mkdir -p "$(dirname "$link_name")"

    # Create the symlink
    ln -s "$target" "$link_name"
    echo "Created symlink: $link_name -> $target"
}

# Link .zshrc
create_symlink ~/dotfiles/zsh/zshrc ~/.zshrc

# Link nvim config
create_symlink ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua

# Link nvim lua directory
create_symlink ~/dotfiles/nvim/lua ~/.config/nvim/lua

# Link tmux config
create_symlink ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Link cmus config
create_symlink ~/dotfiles/cmus/rc ~/.config/cmus/rc
