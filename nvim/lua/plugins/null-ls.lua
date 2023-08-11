return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
      sources = {
        nls.builtins.formatting.fish_indent,
        nls.builtins.diagnostics.fish,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.shfmt,
        nls.builtins.diagnostics.eslint,
        nls.builtins.formatting.prettier,
        nls.builtins.diagnostics.mypy,
        nls.builtins.diagnostics.ruff,
        nls.builtins.formatting.black,
      },
    }
  end,
}
