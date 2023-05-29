local builtin = require('telescope.builtin')

-- Prompts the user to enter a search string and performs a grep search
-- using the provided search string.
local function GrepWordPrompt()
	builtin.grep_string({ search = vim.fn.input("Find WORD > ") })
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "List buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags" })
vim.keymap.set('n', '<leader>fw', GrepWordPrompt, { desc = "Find WORD" })
