return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup {
      variant = 'main',
      dark_variant = 'main',
      disable_background = true,
      disable_float_background = true,
      disable_italics = true,
    }
  end,
}
