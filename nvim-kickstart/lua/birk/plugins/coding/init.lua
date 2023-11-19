return
  {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    -- Add indentation guides even on blank lines
    {
      'lukas-reineke/indent-blankline.nvim',
      -- Enable `lukas-reineke/indent-blankline.nvim`
      -- See `:help ibl`
      main = 'ibl',
      opts = {},
    },
  }
