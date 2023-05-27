# Update package lists and upgrade packages
alias aptupdate='sudo apt update && sudo apt upgrade'

# Search for packages
alias aptsearch='apt search'

# Install packages
alias aptinstall='sudo apt install'

# Remove packages
alias aptremove='sudo apt remove'

# Upgrade packages
alias aptupgrade='sudo apt upgrade'

# Clean package cache
alias aptclean='sudo apt autoclean && sudo apt autoremove'

# Show package information
function aptinfo() {
	apt show "$1" | less
}
