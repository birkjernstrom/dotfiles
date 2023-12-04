return {
  {
    'ThePrimeagen/harpoon',
    config = function(_, opts)
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>b', mark.add_file, { desc = 'Harpoon: Add' })
      vim.keymap.set('n', '<C-b>', ui.toggle_quick_menu)

      -- Alt + 1 (macOS)
      vim.keymap.set('n', '<M-1>', function()
        ui.nav_file(1)
      end)
      -- Alt + 2 (macOS)
      vim.keymap.set('n', '<M-2>', function()
        ui.nav_file(2)
      end)
      -- Alt + 3 (macOS)
      vim.keymap.set('n', '<M-3>', function()
        ui.nav_file(3)
      end)
      -- Alt + 4 (macOS)
      vim.keymap.set('n', '<M-4>', function()
        ui.nav_file(4)
      end)
    end,
  },
}
