return
{
  {
    'mfussenegger/nvim-lint',
    event = {
      'BufReadPre',
      'BufNewFile',
    },
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'rshkarin/mason-nvim-lint',
    },
    config = function()
      local lint = require('lint')
      local mason_lint = require('mason-nvim-lint')

      mason_lint.setup({
        ensure_installed = {
          'eslint_d',
          'ruff',
        },
      })

      lint.linters_by_ft = {
        javascript = { 'eslint_d' },
        typescript = { 'eslint_d' },
        javascriptreact = { 'eslint_d' },
        typescriptreact = { 'eslint_d' },
        python = { 'ruff' },
      }

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })

      vim.keymap.set('n', '<leader>ll', function()
        lint.try_lint()
      end, { desc = 'Trigger linting for current file' })
    end,
  },
}