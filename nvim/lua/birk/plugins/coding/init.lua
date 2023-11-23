return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- mini.* plugins
  { 'echasnovski/mini.comment', opts = {} },
  { 'echasnovski/mini.pairs', opts = {} },
  { 'echasnovski/mini.surround', opts = {} },

  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
