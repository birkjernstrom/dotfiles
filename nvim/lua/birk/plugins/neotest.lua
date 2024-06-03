return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",

    -- Adapters
    "nvim-neotest/neotest-python",
  },
  -- stylua: ignore
  keys = {
    -- Strategy: Integrated (Default)
    { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    { "<leader>tt", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
    { "<leader>tn", function() require("neotest").run.run() end, desc = "Run Nearest" },

    -- Strategy: DAP
    { "<leader>tdf", function() require("neotest").run.run({ vim.fn.expand("%"), strategy = 'dap' }) end, desc = "Run File (DAP)" },
    { "<leader>tdt", function() require("neotest").run.run({ vim.loop.cwd(), strategy = 'dap' }) end, desc = "Run All Test Files (DAP)" },
    { "<leader>tdn", function() require("neotest").run.run({ strategy = 'dap' }) end, desc = "Run Nearest (DAP)" },

    -- Shared
    { "<leader>tv", function() require("neotest").summary.toggle() end, desc = "Toggle Summary View" },
    { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    { "<leader>ts", function() require("neotest").run.stop() end, desc = "Stop" },
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
          runner = "pytest",
        }),
      },
    })
  end,
}
