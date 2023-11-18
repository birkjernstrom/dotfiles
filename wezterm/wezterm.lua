local wezterm = require("wezterm")
local config = {
	hide_tab_bar_if_only_one_tab = true,
	adjust_window_size_when_changing_font_size = false,
	tab_bar_at_bottom = true,

	color_scheme = "kanagawabones",
	font = wezterm.font("BerkeleyMono Nerd Font Mono", { weight = "Regular", italic = false }),
	font_size = 14,
	window_background_opacity = 0.95,
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},

	window_frame = {
		font = wezterm.font({ family = "BerkeleyMono Nerd Font Mono", weight = "Regular" }),
		font_size = 14,
		active_titlebar_bg = "#202029",
		inactive_titlebar_bg = "#202029",
	},

	colors = {
		tab_bar = {
			inactive_tab_edge = "#202029",

			active_tab = {
				bg_color = "#e6e0c2",
				fg_color = "#1f1f28",
				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},

			inactive_tab = {
				bg_color = "#202029",
				fg_color = "#ddd8bb",
			},
		},
	},
}
return config
