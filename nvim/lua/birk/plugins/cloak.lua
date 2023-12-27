return {
  "laytan/cloak.nvim",
  config = function()
    require("cloak").setup({
      enabled = true,
      cloak_character = "*",
      highlight_group = "Comment",
      cloak_length = nil,
      try_all_patterns = true,
      patterns = {
        {
          file_pattern = {
            ".env*",
            ".yaml*",
          },
          cloak_pattern = { "=.+", ":.+", "-.+" },
          replace = nil,
        },
      },
    })
  end,
}
