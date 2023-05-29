local set_keymap = require('config.utilities').set_keymap

-- Setup
--------

local cmp = require('cmp')
cmp.setup {
	snippet = {
		expand = function(args)
			-- You can choose a different snippet engine if you want.
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
	},
}


-- Toggle Autocompletion
-- ----------------------

-- Key mapping for toggling autocompletion
set_keymap('n', '<leader>ta', '<Cmd>lua _G.toggle_autocompletion()<CR>',
"Toggle Autocompletion")

-- Variable to track autocompletion state
local is_autocompletion_enabled = true

-- Function to toggle autocompletion on and off
_G.toggle_autocompletion = function()
	if is_autocompletion_enabled then
		is_autocompletion_enabled = false
		vim.api.nvim_command('autocmd! InsertEnter * lua require("cmp").setup.buffer { enabled = false }')
		vim.api.nvim_command('autocmd! InsertLeave * lua require("cmp").setup.buffer { enabled = true }')
	else
		is_autocompletion_enabled = true
		vim.api.nvim_command('autocmd! InsertEnter * lua require("cmp").setup.buffer { enabled = true }')
		vim.api.nvim_command('autocmd! InsertLeave * lua require("cmp").setup.buffer { enabled = true }')
	end
end


