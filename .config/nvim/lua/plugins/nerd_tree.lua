local set_keymap = require('config.utilities').set_keymap

-- Similar to tmux-sidebar
set_keymap('n', '<leader>e', ':NERDTreeToggle<CR>', "Toggle NERDTree window on and off")
