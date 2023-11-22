local wezterm = require("wezterm")
local config = {
	adjust_window_size_when_changing_font_size = false,

	-- color_scheme = 'kanagawabones',
	font = wezterm.font("BerkeleyMono Nerd Font Mono", { weight = "Regular", italic = false }),
	font_size = 14,
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

	colors = {
		-- Kanagawa Dragon
		-- https://github.com/rebelot/kanagawa.nvim/pull/170
		foreground = "#c5c9c5",
		background = "#181616",

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

		tab_bar = {
			background = "#181616",
			inactive_tab_edge = "#202029",

			active_tab = {
				bg_color = "#8ba4b0",
				fg_color = "#1f1f28",
				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},

			inactive_tab = {
				bg_color = "#1D1C19",
				fg_color = "#ddd8bb",
			},

			inactive_tab_hover = {
				bg_color = "#1D1C19",
				fg_color = "#ddd8bb",
				italic = false,
			},

			new_tab = {
				bg_color = "#181616",
				fg_color = "#ddd8bb",
			},

			new_tab_hover = {
				bg_color = "#181616",
				fg_color = "#ddd8bb",
				italic = false,
			},
		},
	},
}
return config
