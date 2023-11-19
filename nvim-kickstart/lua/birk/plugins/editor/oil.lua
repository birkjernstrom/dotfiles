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
        vim.keymap.set('n', '<leader>o', '<cmd>Oil .<cr>', { desc = '[O]il Open CWD' })
      end,
    }
  }
