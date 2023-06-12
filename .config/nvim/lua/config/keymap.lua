-- Import set_keymap from the config.utilities module
local set_keymap = require('config.utilities').set_keymap

-- Tab Navigation
-----------------
--
-- Tab-related key mappings start with <tab>

set_keymap('n', '<tab>n', ':tabnew<CR>', "Open a new tab with a new empty buffer")
set_keymap('n', '<tab>l', ':tabnext<CR>', "Go to the next tab")
set_keymap('n', '<tab>c', ':tabclose<CR>', "Close the current tab")
set_keymap('n', '<tab>d', ':tabdo ', "Execute a command in all tabs")
set_keymap('n', '<tab>j', ':tabfirst<CR>', "Go to the first tab")
set_keymap('n', '<tab>k', ':tablast<CR>', "Go to the last tab")
set_keymap('n', '<tab>m', ':tabmove ', "Move the current tab")
set_keymap('n', '<tab>o', ':tabonly<CR>', "Close all other tabs")
set_keymap('n', '<tab>h', ':tabprevious<CR>', "Go to the previous tab")
set_keymap('n', '<tab>t', [[:tabnew | term<CR>:call feedkeys("i")<CR>]], 
"Open a new tab with a terminal in insert mode")


-- Buffer and Window Management
-------------------------------
--
set_keymap('n', '<leader>q', '<C-6>', "Switch back to previously used window")

-- Window Opening
set_keymap('n', '<leader>/', ':rightbelow vnew<CR>', "Open empty window on the right")
set_keymap('n', '<leader>|', ':rightbelow vnew<CR>', "Open empty window on the right")
set_keymap('n', '<leader>7', ':rightbelow vnew<CR>', "Open empty window on the right")
set_keymap('n', '<leader>-', ':new<CR>:wincmd j<CR>', "Open empty window below")

-- Window Resizing
set_keymap('n', '<leader>J', ':resize +5<CR>', "Resize window 5 cells down")
set_keymap('n', '<leader>K', ':resize -5<CR>', "Resize window 5 cells up")
set_keymap('n', '<leader>H', ':vertical resize -5<CR>', "Resize window 5 cells left")
set_keymap('n', '<leader>L', ':vertical resize +5<CR>', "Resize window 5 cells right")
set_keymap('n', '<leader><Left>', ':vertical resize -5<CR>', "Resize window 5 cells left")
set_keymap('n', '<leader><Right>', ':vertical resize +5<CR>', "Resize window 5 cells right")
set_keymap('n', '<leader><Down>', ':resize +5<CR>', "Resize window 5 down")
set_keymap('n', '<leader><Up>', ':resize -5<CR>', "Resize window 5 up")

-- Editing
----------
--
set_keymap('n', '<leader>a', 'ggVG', "Select all text in a buffer")
set_keymap('n', '<leader>ch', ':lua ClearSearchHighlighting()<CR>', 
"Clear search highlighting")

-- Delete / paste text using the black hole register -> deleting text without 
-- yanking (copying) into any registers.
-- This allows to easily delete / paste text without cluttering any registers 
-- with the deleted / replaced content.
set_keymap('v', '<leader>d', '"_d', "Delete text without yanking")
set_keymap('v', '<leader>p', '"_dP', "Paste text without yanking")

-- Open the init.lua file for editing directly
set_keymap('n', '<leader>n', ':edit ~/.config/nvim/init.lua<CR>', "Edit nvim init.lua")

set_keymap('n', '<leader>v', '<C-v>', "Enter visual block mode")


-- Terminal-related mappings
----------------------------
--
-- Exit insert mode with <Esc> in terminal
vim.cmd(':tnoremap <Esc> <C-\\><C-n>')
-- TBD: Fix conflict with vi bind in zsh configuration...

-- Toggling
-----------
--
-- Toggle related keymaps start with <leader>t
-- See also 7.9 Commenting 

set_keymap('n', '<leader>tl', ':lua ToggleLineNumbers()<CR>', "Toggle line numbers")
set_keymap('n', '<leader>th', ':lua ToggleHighlightSearch()<CR>', "Toggle search highlight")
set_keymap('n', '<leader>ts', ':lua ToggleSpellChecking()<CR>', "Toggle spell checking")
set_keymap('n', '<leader>tw', ':lua ToggleWrap()<CR>', "Toggle line wrapping")
set_keymap('n', '<leader>tt', ':TransparentToggle<CR>', "Toggle background transparency")

