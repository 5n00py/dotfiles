# Creating a coverage report in python
alias pycov='python3 -m pytest --cov --cov-report=xml'

# Formatting source code in python using black
alias pyfmt='python3 -m black'

# Formatting source code in a C project
alias cfmt='find . -name "*.c" -o -name "*.h" | xargs clang-format -style=file:~/.clang-format -i'

