return {
  -- add kanagawa
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
