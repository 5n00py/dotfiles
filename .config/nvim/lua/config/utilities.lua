-- Toggle the display of both absolute and relative line numbers.
function ToggleLineNumbers()
	vim.wo.number = not vim.wo.number
	vim.wo.relativenumber = not vim.wo.relativenumber
end

-- Toggle the highlighting of search results.
function ToggleHighlightSearch()
	vim.o.hlsearch = not vim.o.hlsearch
end

-- Toggle line wrapping on and off.
function ToggleWrap()
	vim.wo.wrap = not vim.wo.wrap
end

-- Toggle spell checking on and off.
function ToggleSpellChecking()
	vim.wo.spell = not vim.wo.spell
end

-- Clear search highlighting until the next search.
function ClearSearchHighlighting()
	vim.api.nvim_exec('nohlsearch', true)
end

-- lua/config/keymap.lua

-- set_keymap: A wrapper function for vim.api.nvim_set_keymap that sets noremap
-- and silent to true by default.
--
-- Args:
--   mode: A single character string representing the mode for the mapping.
--         For example, 'n' for normal mode, 'v' for visual mode, etc.
--   lhs: A string representing the left-hand side of the mapping 
--        (the keys to press).
--   rhs: A string representing the right-hand side of the mapping 
--        (the command to execute).
--
local function set_keymap(mode, lhs, rhs)
	-- Create an options table with noremap and silent set to true.
	local opts = {noremap = true, silent = true}

	-- Call vim.api.nvim_set_keymap with the specified mode, lhs, rhs, and 
	-- options.
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

return {
  set_keymap = set_keymap,
  ToggleLineNumbers = ToggleLineNumbers,
  ToggleHighlightSearch = ToggleHighlightSearch,
  ToggleWrap = ToggleWrap,
  ToggleSpellChecking = ToggleSpellChecking,
  ClearSearchHighlighting = ClearSearchHighlighting,
}
