# Python 
# ------

# Creating a coverage report in python
alias pycov='python3 -m pytest --cov --cov-report=xml'

# Formatting source code in a python project
alias pyfmt='find . -name "*.py" | xargs python3 -m black'

# Alias for pytest with verbosity and doctest-modules
alias pt='pytest -v --doctest-modules'

# Upgrade all outdated Python packages
# Lists outdated packages, extracts package names, and upgrades each package individually
alias pipupgrade="pip3 list --outdated | awk '{if(NR>2)print $1}' | awk -F ' ' '{print $1}' | xargs -n1 pip3 install -U"

# Create a Python virtual environment named 'venv'
alias mkvenv="python3 -m venv venv"

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

# Set breakpoint() in Python to call pudb
export PYTHONBREAKPOINT="pudb.set_trace"


# C Programming 
# -------------

# Formatting source code in a C project
alias cfmt='find . -name "*.c" -o -name "*.h" | xargs clang-format -style=file:~/.clang-format -i'


# Rust 
# ----

# Formatting rust code in a Rust project
alias rfmt='find . -name "*.rs" | xargs rustfmt'


# Markdown
# --------

# md was set as alias for "mkdir -p" probably coming from oh-my-zsh
unalias md
# Convert Markdown file to HTML and display in terminal using pandoc and w3m
md() {
  pandoc "$1" | w3m -T text/html
}

