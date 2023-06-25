# Usage: manpdf [command] This will open the
# man page of [command] as a PDF in zathura.
manpdf() { man -Tpdf "$@" | zathura - }

# Bind j and k keys for navigation in fzf
export FZF_DEFAULT_OPTS=" --bind='j:down,k:up' $FZF_DEFAULT_OPTS "
# Grep search in current directory and subdirectories, and open selected files
# in neovim Usage: grepnvim [keyword] This will search for files containing
# [keyword] and open a popup to select which files to open in neovim.
grepword() { grep -rl "$1" . | fzf -m | xargs -I {} nvim {} }

# Alias same as in nvim configuration "find word"
alias fw='grepword'


# This function is used to set the ID3 title tag of all audio files of a given
# format in the current directory. The title is taken from the file name, with
# the file extension removed. Arguments: $1: The format of the audio files to
# operate on. This should be the file extension without the leading dot. Usage:
# id3_update_titles <format> Example: id3_update_titles mp3
id3_update_titles() {
	# The format is passed as an argument to the function
	local format=$1 

  # Iterate over all files of the given format in the current directory
  for file in *."$format"; do
	  # Remove the format extension from the filename to derive the title
	  local title="${file%.$format}"

	# Use id3tool to set the title ID3 tag
	id3tool "$file" --set-title="$title"
done
}

