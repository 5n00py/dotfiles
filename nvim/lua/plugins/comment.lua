local set_keymap = require('config.utilities').set_keymap
local comment = require('nvim_comment')

-- Note: There were conflicting keymaps with which-key. To resolve them they
-- are changed here to somewhat arbitrary keymaps.
comment.setup({
	line_mapping = "glm",  -- Change to a non-conflicting keymap
	operator_mapping = "gom",  -- Change to a non-conflicting keymap
})

set_keymap('n', '<leader>tc', ':CommentToggle<CR>', "Toggle Code Comment")
set_keymap('v', '<leader>tc', ':CommentToggle<CR>', "Toggle Code Comment")
