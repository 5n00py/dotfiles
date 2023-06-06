# Creating a coverage report in python
alias pycov='python3 -m pytest --cov --cov-report=xml'

# Formatting source code in python using black
alias pyfmt='find . -name "*.py" | xargs python3 -m black'

# Alias for pytest with verbosity and doctest-modules
alias pt='pytest -v --doctest-modules'

# Formatting source code in a C project
alias cfmt='find . -name "*.c" -o -name "*.h" | xargs clang-format -style=file:~/.clang-format -i'

# Formatting rust code in a Rust project
alias rfmt='find . -name "*.rs" | xargs rustfmt'

