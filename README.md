# Dotfiles

This repository contains my personal dotfiles, which consist of configuration
files for various tools and applications that I utilize in my development
environment. These dotfiles are specifically tailored to align with my
workflow, preferences, and productivity needs. I am sharing them here with the
intention that they can be valuable to others and serve as a remote backup.

The dotfiles within this repository are designed to work harmoniously,
providing a cohesive and streamlined experience. They have been carefully
configured to complement each other and establish consistent behavior across
different tools. By utilizing these dotfiles, you can benefit from a unified
and familiar environment that enhances your productivity and efficiency.

Feel free to modify and customize these dotfiles to suit your own requirements 
and preferences.

## Features

### Neovim 

Neovim is a highly extensible text editor designed for efficient editing and 
coding. My Neovim setup includes customized settings, plugins, and keybindings 
to enhance productivity and streamline my coding workflow.

- Files & Directories: [.config/nvim](.config/nvim)
- Documentation: [nvim-config-doc.pdf](.config/nvim/doc/nvim-config-doc.pdf), [neovim documentation](https://neovim.io/doc/) 

### Zsh 

Zsh is a powerful shell with advanced features and customization options. My 
Zsh configuration includes aliases, functions, and general settings to optimize 
command-line navigation and productivity.

- Files & Directories: [.zshrc](.zshrc), [.config/zsh](.config/zsh)
- Documentation: [zsh-config-doc.pdf](.config/zsh/doc/nvim-config-doc.pdf), [Zsh Manual](https://zsh-manual.netlify.app/) 

### Tmux 

Tmux is a terminal multiplexer that allows multiple terminal sessions within a 
single window. My Tmux setup includes custom keybindings, appearance settings, 
and plugin configurations to enhance the terminal experience and improve 
productivity. 

- Files & Directories: [.tmux.conf](.tmux.conf), [.config/tmux](.config/tmux)
- Documentation: [tmux-config-doc.pdf](.config/tmux/doc/tmux-config-doc.pdf), [Tmux guide](https://tmuxguide.readthedocs.io/en/latest/index.html)

### Cmux 
Cmus is a lightweight, feature-rich music player designed to be operated 
entirely from the keyboard. The interface, inspired by vim, allows for 
efficient navigation and manipulation of music libraries of any size. With 
cmus, you can manage playlists, q tracks, and even manipulate audio settings 
in the terminal. In addition, cmus supports a variety of audio formats and can 
be extended via scripts and plugins.

- Files & Directories: [.config/cmus](.config/cmus)
- Documentation: [cmus](https://cmus.github.io/#home)

### Zathura

Zathura is a lightweight and customizable document viewer with a minimalistic 
design. It offers a streamlined reading experience for various document formats, 
including PDF, EPUB, and more.

- Files & Directories: [.config/zathura](.config/zathura)
- Documentation: [Zathura Documentation](https://pwmt.org/projects/zathura/documentation/)

## Usage

Feel free to explore and use these dotfiles according to your own preferences.
However, keep in mind that these dotfiles are tailored to my specific needs and
may require adjustments to fit your own environment.

To use these dotfiles:

1. Clone the repository to your local machine into the home directory:
   ```bash
    git clone --bare https://www.github.com/5n00py/dotfiles.git $HOME/.dotfiles.git
    echo ".dotfiles.git" >> .gitignore
    dotfiles checkout
    dotfiles config --local status.showUntrackedFiles no
      ```

2. Review the dotfiles and customize them as needed.

3. Install relevant dependencies

4. Reload or restart the relevant applications (e.g., restart the terminal or
run source ~/.zshrc for Zsh).

## Purpose

This repository contains my personal dotfiles, which are configuration files
primarily tailored for programming in Rust, C, Python, and Shell scripting.
These dotfiles provide a customized environment optimized for my development
workflow and preferences.

The dotfiles are organized into separate directories and files, following a
modularization approach. While they may not be as "dotty" as before, they
try retain their purpose.

## Manage Dotfiles With a Bare Git Repository

For more detailed information on how to manage dotfiles in a bare git
repository, please refer to this [post by Nicola
Paolucci](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html).

## Compatibility

Although I am primarily working on Ubuntu, many aspects of these dotfiles
should work across different Linux distributions and other Unix-like systems.
However, please note that certain configurations or dependencies may be
specific to Ubuntu or require additional setup on other platforms.

## Contributing

Although these dotfiles reflect my personal preferences and workflow, I welcome
contributions and suggestions that can improve their usability and effectiveness.
If you have any ideas, improvements, or bug fixes, feel free to open an issue
or submit a pull request.

## Acknowledgements

I've been inspired and influenced by various dotfiles repositories and
open-source projects. I want to express my gratitude to the creators and
contributors of those projects for their valuable contributions to the
developer community.

## License

This project is licensed under the MIT License, which allows you to use,
modify, and distribute the code as long as you retain the original license
notice.
