return {
	-- Improve vim.ui interfaces
	{
		'stevearc/dressing.nvim',
		opts = {},
	},
	-- Show idenentation guides
	{
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			local ibl = require 'ibl'
			local hooks = require 'ibl.hooks'

			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, 'Muted', { fg = '#232137' })
				vim.api.nvim_set_hl(0, 'Highlighted', { fg = '#6E6A86' })
			end)

			ibl.setup {
				indent = {
					char = '│',
					tab_char = '│',
					highlight = { 'Muted' },
				},
				scope = { enabled = true, highlight = { 'Highlighted' } },
				exclude = {
					filetypes = {
						'help',
						'alpha',
						'dashboard',
						'neo-tree',
						'Trouble',
						'trouble',
						'lazy',
						'mason',
						'notify',
						'toggleterm',
						'lazyterm',
					},
				},
			}
		end,
		main = 'ibl',
	}
}
