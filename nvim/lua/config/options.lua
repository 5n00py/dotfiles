-- lua/config/options.lua

-- Function to apply options
local function apply_options(options)
  for option, value in pairs(options) do
    vim.opt[option] = value
  end
end

-- Define options
local options = {
  -- Show line numbers
  number = true,

  -- Show relative line numbers (number of lines from current cursor position)
  relativenumber = true,

  -- Enable mouse mode
  mouse = 'a',

  -- Sync clipboard between OS and Neovim
  -- Note: A clipboard provider has to be installed on your system
  -- E.g. sudo apt-get install xclip
  clipboard = 'unnamedplus',

  -- Enable True Color support
  termguicolors = true,

  -- Enable break indent (every wrapped line will continue visually intended)
  breakindent = true,

  -- Indent a new line same as the previous line
  autoindent = true,

  -- Set the number of spaces a tab character occupies
  tabstop = 4,

  -- Set the number of spaces used for each step of (auto)indent
  shiftwidth = 4,

  -- Highlight matching pairs of brackets
  showmatch = true,

  -- Case insensitive searching UNLESS /C or capital in search
  ignorecase = true,
  smartcase = true,

  -- Highlight all matches when searching
  hlsearch = true,

  -- Set the maximum width of a line to prevent horizontal scrolling
  textwidth = 79,
  colorcolumn = {80, 120},
}

-- Apply options
apply_options(options)
