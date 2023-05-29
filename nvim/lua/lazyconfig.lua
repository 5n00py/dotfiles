-- Note: The plugins can be configured here using 'config' or the can be
-- configured after the setup call.
require('lazy').setup({

	'folke/tokyonight.nvim',
	-- A dark theme with vibrant colors, designed to be easy on the eyes 
	-- and providing a modern aesthetic for coding environments.

	'navarasu/onedark.nvim',
	-- A theme inspired by Atom
	-- A dark theme with muted colors and a focus on contrast

	'shaunsingh/nord.nvim',
	-- A theme based off of the nord color palette
	-- A light theme with cool blue and green hues

	{	'nvim-lualine/lualine.nvim',
		-- A blazing fast and easy to configure statusline
		-- See ':help lualine.txt'
		opts = {
			options = {
				icons_enabled = false,
				theme = 'tokyonight',
				component_separators = '|',
				section_separators = '',
			},
		},
	},

	{	'folke/which-key.nvim',
		-- Displays a popup with possible key bindings of the command started
		-- typing.
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				show_all = true
			})
		end,
	},

	{	'nvim-telescope/telescope.nvim', version = '*', 
		-- Fuzzy Finder (files, lsp, etc)
		dependencies = { 'nvim-lua/plenary.nvim' } 
	},

	{	'nvim-telescope/telescope-fzf-native.nvim',
		-- Fuzzy Finder Algorithm which requires local dependencies to be built.
		-- Only load if 'make' is available. Make sure you have the system
		-- requirements installed.
		build = 'make',
		cond = function()
			return vim.fn.executable 'make' == 1
		end,
	},

	{	'preservim/nerdtree',
		-- File system explorer
		cmd = {	'NERDTreeToggle', 'NERDTreeFind' },
		config = function()
			vim.g.NERDTreeShowHidden=1
		end
	},

	'tpope/vim-fugitive',
	-- the premier Vim plugin for Git
	
	'williamboman/mason.nvim',
	-- Easily install and manage LSP servers, DAP servers, linters, and formatters.
	-- See ':help mason.nvim'

	{	'neovim/nvim-lspconfig',
		-- Configs for the Nvim LSP client 
		-- See ':help lsp'
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			{ 'williamboman/mason.nvim', config = true },
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim', opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',

			'simrat39/rust-tools.nvim',
		},
	},

	{	'hrsh7th/nvim-cmp',
		-- A powerful and extensible completion engin. 
		-- It provides a flexible framework for completing text from various 
		-- sources, such as Language Servers, snippets, and more.
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
		},
	},

	'terrortylor/nvim-comment',
	-- Toggle code comments

	{	'nvim-treesitter/nvim-treesitter',
		-- Highlight, edit, and navigate code
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},

	'nvim-treesitter/playground',
	-- View treesitter information directly in Neovim!
	-- The tree can be toggled using the command :TSPlaygroundToggle

	'tpope/vim-obsession',
	-- Continuously updated session files
	-- Useful to restore tmux sessions with tmux-resurrect
	
	'mbbill/undotree',
	-- Visualize the undo history and make it easy to browse and switch between 
	-- different undo branches.
	
	'simrat39/rust-tools.nvim',
	-- A plugin to improve your rust experience in neovim.
	
	{	'mfussenegger/nvim-dap',
		-- Basic debugger in Neovim
		-- Extensibility and double as DAP client library

  		dependencies = {
    		'rcarriga/nvim-dap-ui',
        	'williamboman/mason.nvim',
    		'jay-babu/mason-nvim-dap.nvim',
			'nvim-lua/plenary.nvim',
			'simrat39/rust-tools.nvim',
			'leoluz/nvim-dap-go',
		}
  	},
}, {})

