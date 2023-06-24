# Toggle activation and deactivation of a Python virtual environment
venv() {
  # Helper function to search for "venv" directory recursively
  find_venv() {
    local current_dir="$1"
    while [[ "$current_dir" != "/" ]]; do
      if [[ -d "$current_dir/venv" ]]; then
        echo "$current_dir/venv"
        return
      fi
      current_dir=$(dirname "$current_dir")
    done
  }

  if [[ -z $VIRTUAL_ENV ]]; then
    local venv_dir=$(find_venv "$(pwd)")
    if [[ -n $venv_dir ]]; then
      source "$venv_dir/bin/activate"
      echo "Virtual environment activated: $venv_dir"
    else
      echo "No virtual environment found."
    fi
  else
    deactivate
    echo "Virtual environment deactivated."
  fi
}


# Define a function named "grip_preview" that takes a file as an argument$
# renders the markdown and opens it in the default brosers
md_preview() {
  local file="$1"
  local port=6419  # Port number used by grip (can be modified if desired)

  # Start grip in the background, redirecting its output to /dev/null
  grip "$file" $port &> /dev/null &

  # Generate the URL for the grip preview based on the file and port
  local url="http://localhost:$port"

  # Open the URL in the default web browser
  $BROWSER "$url"
}

