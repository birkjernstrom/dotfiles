return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "pyright",
        "mypy",
        "black",
        "ruff",
      },
    },
  },
}
