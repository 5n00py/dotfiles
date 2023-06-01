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

# Sanitize Filenames
# ------------------
#
# This function sanitizes filenames by replacing spaces with underscores
# and removing other potentially problematic characters.
sanitize_filenames() {
    # Define the characters that we want to remove from filenames
    local bad_chars="&*\\\$@#!()[]{}:;\"'=<>?|^~"
    
    # Use the find command to locate all files under the current directory
    find . -type f |
    # Read each file found by the 'find' command
    while IFS= read -r file; do
        # Get the directory name and base name of the current file
        directory=$(dirname "$file")
        oldbasename=$(basename "$file")

        # Replace spaces in the base name with underscores
        newbasename="${oldbasename// /_}"

        # Remove other potentially problematic characters from the base name
        for char in $(echo $bad_chars | sed -e 's/\(.\)/\1\n/g'); do
            newbasename="${newbasename//$char/}"
        done

        # Check if a file with the new base name already exists in the directory
        if [ ! -e "$directory/$newbasename" ]; then
            # If not, rename the current file to the new base name
            mv -- "$file" "$directory/$newbasename"
        else
            # If a file with the new base name already exists, print an error message
            echo "Error: File '$directory/$newbasename' already exists. Skipped renaming '$file'."
        fi
    done
}

# This function moves all directories from the current directory to the parent 
# directory.
# If a directory with the same name already exists in the parent directory,
# the function will not move the directory and will print a message.
move_dirs_up() {
    # Loop over all directories in the current directory
    for dir in ./*/; do 
        # Check if a directory with the same name exists in the parent directory
        if [ -d "../${dir}" ]; then
            # If such a directory exists, print a message and skip this directory
            echo "Directory ${dir} already exists in the parent directory. Skipping."
        else
            # If no such directory exists, move the directory to the parent directory
            mv "$dir" ../
        fi
    done
}


