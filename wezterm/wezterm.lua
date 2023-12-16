local wezterm = require("wezterm")
local rose_pine = require("rose-pine")

local config = {
	adjust_window_size_when_changing_font_size = false,

	font = wezterm.font("BerkeleyMono Nerd Font Mono", { weight = "Regular", italic = false }),
	font_size = 14,
	colors = rose_pine.colors(),
	window_decorations = "RESIZE",
	window_frame = rose_pine.window_frame(),
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 10,
	},

	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
}
return config
