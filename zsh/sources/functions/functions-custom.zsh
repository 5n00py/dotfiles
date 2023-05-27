# Man Pages as PDF
# ----------------
# Usage: manpdf [command]
# This will open the man page of [command] as a PDF in zathura.
manpdf() {
	man -Tpdf "$@" | zathura -
}

# Grep Search
# -----------

# Bind j and k keys for navigation in fzf
export FZF_DEFAULT_OPTS="
  --bind='j:down,k:up'
  $FZF_DEFAULT_OPTS
"
# Grep search in current directory and subdirectories, and open selected files in neovim
# Usage: grepnvim [keyword]
# This will search for files containing [keyword] and open a popup to select which files to open in neovim.
grepword() {
  grep -rl "$1" . | fzf -m | xargs -I {} nvim {}
}

# Alias same as in nvim configuration "find word"
alias fw='grepword'
