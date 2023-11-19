local opt = vim.o
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
opt.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
opt.gmouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.gclipboard = 'unnamedplus'

-- Enable break indent
opt.gbreakindent = true

-- Save undo history
opt.gundofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.gignorecase = true
opt.gsmartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
opt.gupdatetime = 250
opt.gtimeoutlen = 300

-- Set completeopt to have a better completion experience
opt.gcompleteopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
opt.gtermguicolors = true

-- Show relative linenumbers - easier navigation
opt.grelativenumber = true
