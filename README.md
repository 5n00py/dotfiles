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

- **Neovim Configuration**: The repository includes my Neovim configuration
files, located in the nvim directory. Neovim is a highly extensible text editor
designed for efficient editing and coding. My Neovim setup includes customized
settings, plugins, and keybindings to enhance productivity and streamline my
coding workflow. Refer to [nvim-config-doc.pdf](nvim/doc/nvim-config-doc.pdf)
for further information.

- **Zsh Configuration**: The repository includes my Zsh configuration files,
located in the zsh directory. Zsh is a powerful shell with advanced features
and customization options. My Zsh configuration includes aliases, functions,
and general settings to optimize command-line navigation and productivity.
Refer to [zsh-config-doc.pdf](zsh/doc/zsh-config-doc.pdf) for further
information.

- **Tmux Configuration**: The repository includes my Tmux configuration files,
located in the tmux directory. Tmux is a terminal multiplexer that allows
multiple terminal sessions within a single window. My Tmux setup includes
custom keybindings, appearance settings, and plugin configurations to enhance
the terminal experience and improve productivity. For more information, refer
to the [tmux-config-doc.pdf](tmux/doc/tmux-config-doc.pdf) document.

## Usage

Feel free to explore and use these dotfiles according to your own preferences.
However, keep in mind that these dotfiles are tailored to my specific needs and
may require adjustments to fit your own environment.

To use these dotfiles:

1. Clone the repository to your local machine into the home directory:
   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/Dotfiles
   ```

2. Review the dotfiles and customize them as needed.

3. Create symbolic links that point to the respecive files in the dotfiles
   directory. You can use the script as described below.

4. Install relevant dependencies

5. Reload or restart the relevant applications (e.g., restart the terminal or
run source ~/.zshrc for Zsh).

## Purpose

This repository contains my personal dotfiles, which are configuration files
primarily tailored for programming in Rust, C, Python, and Shell scripting.
These dotfiles provide a customized environment optimized for my development
workflow and preferences.

The dotfiles are organized into separate directories and files, following a
modularization approach. While they may not be as "dotty" as before, they
try retain their purpose.

 ## Symbolic Links

Instead of directly including the dotfiles in their respective locations,
this repository utilizes symbolic links to the dotfiles folder. Symbolic links
offer the advantage of easy management and version control of the dotfiles.
They allow for seamless updates and modifications to the dotfiles while keeping
them centralized in one location.

By not including the actual files in Git, you have the opportunity to back up
your existing dotfiles before creating symbolic links. This is particularly
useful if you already have custom configurations or important files in your
home folder that you don't want to lose.

There is a script 'setup_links.sh' included in this project which automates the
process of backing up existing files and creating symbolic links for the
configuration files included in this repository:

- Make sure the script has execute permissions:
   ```bash
   chmod +x setup_links.sh
   ```
- Run the script:
   ```bash
   ./setup_links.sh
   ```

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
