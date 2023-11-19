return
  {
    {
      'stevearc/oil.nvim',
      opts = {
        delete_to_trash = true,
      },
      -- Optional dependencies
      dependencies = { "nvim-tree/nvim-web-devicons" },
      --
      init = function()
        vim.keymap.set('n', '<leader>o', '<cmd>Oil --float<cr>', { desc = '[O]il open parent directory' })
      end,
    }
  }
