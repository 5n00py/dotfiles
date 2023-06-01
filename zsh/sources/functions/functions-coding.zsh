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
