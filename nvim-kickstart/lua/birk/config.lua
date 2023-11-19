local g = vim.g
local o = vim.o
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
g.mapleader = ' '
g.maplocalleader = ' '

-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
o.clipboard = 'unnamedplus'

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true

-- Show relative linenumbers - easier navigation
o.relativenumber = true
