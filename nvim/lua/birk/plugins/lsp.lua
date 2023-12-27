local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }

  opts.desc = "Rename"
  vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts)

  opts.desc = "Code Actions"
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

  opts.desc = "Goto Definition"
  vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, opts)

  opts.desc = "Goto References"
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)

  opts.desc = "Goto Implementation"
  vim.keymap.set("n", "gI", require("telescope.builtin").lsp_implementations, opts)

  opts.desc = "Type Definition"
  vim.keymap.set("n", "<leader>dt", require("telescope.builtin").lsp_type_definitions, opts)

  opts.desc = "Document Symbols"
  vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, opts)

  opts.desc = "Workspace Symbols"
  vim.keymap.set("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, opts)

  -- Diagnostic keymaps
  opts.desc = "Diagnostics of current buffer"
  vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

  opts.desc = "Open floating diagnostic message"
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

  opts.desc = "Go to previous diagnostic message"
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

  opts.desc = "Go to next diagnostic message"
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

  opts.desc = "Open diagnostics list"
  vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

  -- See `:help K` for why this keymap
  opts.desc = "Hover Documentation"
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

  opts.desc = "Signature Documentation"
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

  -- Lesser used LSP functionality
  opts.desc = "Goto Declaration"
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

  opts.desc = "Restart LSP Server"
  vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
    vim.lsp.buf.format()
  end, { desc = "Format current buffer with LSP" })
end

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Managed installations of LSPs
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- LSP Status Updates
    { "j-hui/fidget.nvim", opts = {} },

    -- Better Lua & Nvim development
    "folke/neodev.nvim",
  },
  config = function()
    require("mason").setup()
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup()

    local servers = {
      pyright = {},
      rust_analyzer = {},
      tsserver = {},
      tailwindcss = {},
      html = { filetypes = { "html", "twig", "hbs" } },

      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }

    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = true,
    })

    require("neodev").setup()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    mason_lspconfig.setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
          filetypes = (servers[server_name] or {}).filetypes,
        })
      end,
    })
  end,
}
