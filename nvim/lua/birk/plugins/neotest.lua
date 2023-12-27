return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",

    -- Adapters
    "nvim-neotest/neotest-python",
  },
  -- stylua: ignore
  keys = {
    { "<leader>tf", function() print("ran comamnd") require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    { "<leader>tt", function() print("ran comamnd") require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
    { "<leader>tn", function() print("ran comamnd") require("neotest").run.run() end, desc = "Run Nearest" },
    { "<leader>ts", function() print("ran comamnd") require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    { "<leader>to", function() print("ran to command") require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    { "<leader>tO", function() print("ran uppercase O command") require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    { "<leader>tS", function() print("ran uppercase S command") require("neotest").run.stop() end, desc = "Stop" },
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-python")({
          runner = "pytest",
        }),
      },
    })
  end,
}
