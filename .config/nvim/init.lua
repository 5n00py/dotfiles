--------------------------------------------------------------------------------
-- Configuration Loading
--------------------------------------------------------------------------------

-- Set <space> as the leader key referred as <leader>, see ':help mapleader'
-- for more info.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('config.options')
require('config.autocmds')
require('config.utilities')
require('config.keymap')

--------------------------------------------------------------------------------
-- Install the Lazy Package Manager
--------------------------------------------------------------------------------

-- Refer 'help: lazy.nvim.txt' for more details.
-- 'lazypath' is the local variable for the installation path of 'lazy.nvim' 
-- using 'vim.fn.stdpath'.
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

-- If 'lazypath' directory doesn't exist, 'lazy.nvim' is cloned from GitHub 
-- into 'lazypath'.
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- for the latest stable release
		lazypath,
	}
end

-- Neovim finds and loads the 'lazy.nvim' plugin by prepending 'lazypath' to 
-- the runtime path.
vim.opt.rtp:prepend(lazypath)

require('lazyconfig')

--------------------------------------------------------------------------------
-- Set Main Theme
--------------------------------------------------------------------------------

-- Set 'COLORSCHEME' environment variable to your preferred colorscheme 
-- (e.g. 'tokyonight') before starting Neovim.
-- Use 'export COLORSCHEME=<your-colorscheme>' in terminal to set it.
-- Define aliases in your shell config for easy switching.
-- If the specified colorscheme is installed, it will be used, otherwise, 
-- 'tokyonight' is the default.

local colorscheme = os.getenv("COLORSCHEME") or "tokyonight"

local ok, err = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not ok then
	vim.cmd("colorscheme tokyonight")
end

--------------------------------------------------------------------------------
-- Plugin-specifig Configurations 
--------------------------------------------------------------------------------

require('plugins.telescope')
require('plugins.nerd_tree')
require('plugins.lsp_related.language_servers')
require('plugins.lsp_related.key_bindings')
require('plugins.lsp_related.diagnostics')
require('plugins.autocompletion')
require('plugins.comment')
require('plugins.treesitter')
require('plugins.undotree')
require('plugins.chatgpt')
require('plugins.oil')

--                     ♫♪♪♫♪♪.ılılıll|̲̅̅●̲̅̅|̲̅̅=̲̅̅|̲̅̅●̲̅̅|llılılı.♫♪♪♫♪♪
-- ============================================================================
