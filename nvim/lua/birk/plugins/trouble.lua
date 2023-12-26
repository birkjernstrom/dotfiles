return {
  'folke/trouble.nvim',
  tag = 'v2.10.0',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {},
  keys = {
    {
      '<leader>xx',
      function()
        require('trouble').toggle()
      end,
    },
    {
      '<leader>xw',
      function()
        require('trouble').toggle 'workspace_diagnostics'
      end,
    },
    {
      '<leader>xd',
      function()
        require('trouble').toggle 'document_diagnostics'
      end,
    },
    {
      '<leader>xq',
      function()
        require('trouble').toggle 'quickfix'
      end,
    },
    {
      '<leader>xl',
      function()
        require('trouble').toggle 'loclist'
      end,
    },
  },
}
