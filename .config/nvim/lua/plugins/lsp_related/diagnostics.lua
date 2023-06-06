local set_keymap = require('config.utilities').set_keymap

-- Define custom diagnostic signs
vim.fn.sign_define("DiagnosticSignError", {text = "✖", texthl = "DiagnosticSignError", linehl="", numhl=""})
vim.fn.sign_define("DiagnosticSignWarn", {text = "⚠", texthl = "DiagnosticSignWarn", linehl="", numhl=""})
vim.fn.sign_define("DiagnosticSignInfo", {text = "ℹ", texthl = "DiagnosticSignInfo", linehl="", numhl=""})
vim.fn.sign_define("DiagnosticSignHint", {text = "➤", texthl = "DiagnosticSignHint", linehl="", numhl=""})

-- Diagnostic configuration
vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = '●',
		source = "if_many",
		truncate_lines = true,
	},
	signs = {
		severity_sort = true,
	},
	underline = true,
	update_in_insert = false,
})

-- Key Bindings for Diagnostics 

-- Show diagnostics under cursor
set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float({scope="line"})<CR>', "Show diagnostics under cursor")

-- Navigate between diagnostics
set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', "Previous diagnostic")
set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', "Next diagnostic")
