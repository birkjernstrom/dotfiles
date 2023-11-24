return {
  -- mini.* plugins
  { 'echasnovski/mini.comment', opts = {} },
  { 'echasnovski/mini.pairs', opts = {} },

  -- vim-surround vs. mini.surround due to issue with the latter
  {
    'tpope/vim-surround',
    config = function() end,
  },
}
