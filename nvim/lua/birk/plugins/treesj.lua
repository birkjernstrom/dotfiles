return {
  'Wansmer/treesj',
  keys = {
    '<leader>m',
  },
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('treesj').setup()
  end,
}
