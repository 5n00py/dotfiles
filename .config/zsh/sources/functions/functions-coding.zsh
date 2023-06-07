# Activate Python virtual environment
# This function will activate the first venv it finds in the current directory 
# or any subdirectories. If no venv is found, it will print a message saying so.
# Note: This function only activates the first venv directory it finds. If
# there are multiple venv dirs in a project, an other appreach might be needed.
activate_venv() {
    # Recursively finds a 'venv' directory
    venv_path=$(find . -name venv)

    # If venv_path is not empty
    if [[ -n $venv_path ]]; then
        # Activates the virtual environment
        source $venv_path/bin/activate
        echo "Activated virtual environment at $venv_path"
    else
        echo "No 'venv' directory found."
    fi
}

# Define a function named "grip_preview" that takes a file as an argument$
# renders the markdown and opens it in the default brosers
grip_preview() {
  local file="$1"
  local port=6419  # Port number used by grip (can be modified if desired)

  # Start grip in the background, redirecting its output to /dev/null
  grip "$file" $port &> /dev/null &

  # Generate the URL for the grip preview based on the file and port
  local url="http://localhost:$port"

  # Open the URL in the default web browser
  $BROWSER "$url"
}

