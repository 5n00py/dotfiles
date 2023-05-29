local set_keymap = require('config.utilities').set_keymap

set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', "Go to definition")
set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', "Go to declaration")
set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', "Show hover information")
set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', "Find references")
set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', "Rename symbol")
set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions")
set_keymap('n', '<leader>fmt', '<cmd>lua vim.lsp.buf.formatting()<CR>', "Format code")
