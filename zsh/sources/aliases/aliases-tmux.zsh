# Open .tmux.conf file with nvim
alias tmuxconfig="nvim ~/.tmux.conf"

# Create a new tmux session with a specific name
alias tn='tmux new-session -s'

# Attach to a specific tmux session
alias ta='tmux attach-session -t'

# Create a new tmux window with a specific name
alias tw='tmux new-window -n'

# Detach a tmux session
alias td='tmux detach'

# List all active tmux sessions
alias tls='tmux ls'

# Switch to next tmux window
alias tnw='tmux next-window'

# Switch to previous tmux window
alias tpw='tmux previous-window'

# Rename current tmux window
alias trw='tmux rename-window'

# Kill target session with name or ID
alias tks='tmux kill-session -t'

# Kill the tmux server (handle with care !)
alias tka='tmux kill-server'
