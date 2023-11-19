-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- https://github.com/folke/lazy.nvim#-structuring-your-plugins
  { import = 'birk.plugins' },
  { import = 'birk.plugins.editor' },
  { import = 'birk.plugins.lsp' },
  { import = 'birk.plugins.coding' },
  { import = 'birk.plugins.git' },
  { import = 'birk.plugins.ui' },
  { import = 'birk.plugins.ui.colorschemes' },
}, {})
