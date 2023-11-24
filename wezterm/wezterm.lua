local wezterm = require("wezterm")
local config = {
	adjust_window_size_when_changing_font_size = false,

	-- color_scheme = 'kanagawabones',
	font = wezterm.font("BerkeleyMono Nerd Font Mono", { weight = "Regular", italic = false }),
	font_size = 14,
	color_scheme = "tokyonight",
	window_background_opacity = 0.95,
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},

	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
}
return config
