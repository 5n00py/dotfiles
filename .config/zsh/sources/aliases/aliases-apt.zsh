# Update package lists and upgrade packages
alias aptupgrade='sudo apt update && sudo apt upgrade'

# Search for packages
alias aptsearch='apt search'

# Install packages
alias aptinstall='sudo apt install'

# Remove packages
alias aptremove='sudo apt remove'

# Clean package cache
alias aptclean='sudo apt autoclean && sudo apt autoremove'

# Show package information
function aptinfo() {
	apt show "$1" | less
}
