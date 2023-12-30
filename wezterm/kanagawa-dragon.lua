return {
  force_reverse_video_cursor = true,
  foreground = "#c5c9c5",
  background = "#0d0c0c", -- dragonBlack0

  cursor_bg = "#C8C093",
  cursor_fg = "#C8C093",
  cursor_border = "#C8C093",

  selection_fg = "#C8C093",
  selection_bg = "#2D4F67",

  scrollbar_thumb = "#16161D",
  split = "#16161D",

  ansi = {
    "#0D0C0C",
    "#C4746E",
    "#8A9A7B",
    "#C4B28A",
    "#8BA4B0",
    "#A292A3",
    "#8EA4A2",
    "#C8C093",
  },
  brights = {
    "#A6A69C",
    "#E46876",
    "#87A987",
    "#E6C384",
    "#7FB4CA",
    "#938AA9",
    "#7AA89F",
    "#C5C9C5",
  },
  indexed = { [16] = "#B6927B", [17] = "#B98D7B" },

  -- Wezterm
  tab_bar = {
    background = "#0D0C0C",
    active_tab = {
      bg_color = "#0D0C0C",
      fg_color = "#C8C093",
      intensity = "Bold",
      underline = "None",
      italic = false,
    },
    inactive_tab = {
      bg_color = "#0D0C0C",
      fg_color = "#A6A69C",
      intensity = "Normal",
      underline = "None",
      italic = false,
    },
    inactive_tab_hover = {
      bg_color = "#0D0C0C",
      fg_color = "#C8C093",
      intensity = "Bold",
      underline = "None",
      italic = false,
    },
  },
}
