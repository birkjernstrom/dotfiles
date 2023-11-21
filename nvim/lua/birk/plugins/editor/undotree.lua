return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>zz', vim.cmd.UndotreeToggle, { desc = 'Undotree' })
  end,
}
