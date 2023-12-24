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
opt.incsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
opt.mouse = 'a'

-- Enable break indent
opt.breakindent = true

-- No backup, undo history though
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- No text wrapping
opt.wrap = false

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
opt.termguicolors = true

-- Show relative linenumbers - easier navigation
opt.relativenumber = true

-- Spaces for tabs etc
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.shiftround = true
opt.shiftwidth = 4

-- 80 width column
opt.textwidth = 80
opt.colorcolumn = '+1'
