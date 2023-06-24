# Open .zshrc file with nvim
alias zshconfig="nvim ~/.zshrc"

# Reload .zshrc file
function zshreload() {
	source ~/.zshrc
	echo "Zsh configuration reloaded."
}

