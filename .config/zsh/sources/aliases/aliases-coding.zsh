# Python 
# ------

# Creating a coverage report in python
alias pycov='python3 -m pytest --cov --cov-report=xml'

# Formatting source code in python using black
alias pyfmt='find . -name "*.py" | xargs python3 -m black'

# Alias for pytest with verbosity and doctest-modules
alias pt='pytest -v --doctest-modules'

# Upgrade all outdated Python packages
# Lists outdated packages, extracts package names, and upgrades each package individually
alias pipupgrade="pip3 list --outdated | awk '{if(NR>2)print $1}' | awk -F ' ' '{print $1}' | xargs -n1 pip3 install -U"

# Create a Python virtual environment named 'venv'
alias mkvenv="python3 -m venv venv"


# C Programming 
# -------------

# Formatting source code in a C project
alias cfmt='find . -name "*.c" -o -name "*.h" | xargs clang-format -style=file:~/.clang-format -i'

# Rust 
# ----

# Formatting rust code in a Rust project
alias rfmt='find . -name "*.rs" | xargs rustfmt'

