return {
  -- Smart indentation based on buffer, editorconfig etc
  {
    "tpope/vim-sleuth",
    tag = "v2.0",
  },
  -- Ease commenting of code
  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
      local ts_context_comment = require("ts_context_commentstring.integrations.comment_nvim")
      require("Comment").setup({
        pre_hook = ts_context_comment.create_pre_hook(),
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = false,
    },
    -- stylua: ignore
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = 'Next todo comment' },
      { "[t", function() require("todo-comments").jump_prev() end, desc = 'Previous todo comment' },
      { "<leader>ft", ":TodoTelescope<CR>", desc = 'Find all todo comments' },
      { "<leader>xt", ":TodoQuickFix<CR>", desc = 'Quickfix all todo comments' }
    },
  },
  -- Split/join blocks of code
  {
    "Wansmer/treesj",
    keys = {
      "<leader>cm",
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("treesj").setup()
    end,
  },
  -- Automatically create closing pairs
  -- {
  --   "windwp/nvim-autopairs",
  --   event = "InsertEnter",
  --   opts = {
  --     check_ts = true,
  --   },
  -- },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  -- Commands to surround selections with characters
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },
}
