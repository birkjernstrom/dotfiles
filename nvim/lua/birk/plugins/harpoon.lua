return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function(_, opts)
      local harpoon = require("harpoon")
      harpoon:setup()

      vim.keymap.set("n", "<leader>b", function()
        harpoon:list():add()
      end, { desc = "Add file to Harpoon list" })
      vim.keymap.set("n", "<C-b>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Toggle Harpoon list" })

      vim.keymap.set("n", "<M-1>", function()
        harpoon:list():select(1)
      end, { desc = "Jump to Harpoon file 1" })
      vim.keymap.set("n", "<M-2>", function()
        harpoon:list():select(2)
      end, { desc = "Jump to Harpoon file 2" })
      vim.keymap.set("n", "<M-3>", function()
        harpoon:list():select(3)
      end, { desc = "Jump to Harpoon file 3" })
      vim.keymap.set("n", "<M-4>", function()
        harpoon:list():select(4)
      end, { desc = "Jump to Harpoon file 4" })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<M-S-P>", function()
        harpoon:list():prev()
      end, { desc = "Jump to previous Harpoon file" })
      vim.keymap.set("n", "<M-S-N>", function()
        harpoon:list():next()
      end, { desc = "Jump to next Harpoon file" })
    end,
  },
}
