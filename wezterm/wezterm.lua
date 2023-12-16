local wezterm = require("wezterm")
local wt_action = wezterm.action
local rose_pine = require("rose-pine")

-- Inspiraton from Josh Medeski
local cmd_alt_tmux_prefix = function(key, tmux_key)
	local tmux_leader = {
		mod = "CTRL",
		key = "s",
	}
	return {
		mods = "CMD|ALT",
		key = key,
		action = wt_action.Multiple({
			wt_action.SendKey({ mods = tmux_leader.mod, key = tmux_leader.key }),
			wt_action.SendKey({ key = tmux_key }),
		}),
	}
end

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

	keys = {
		-- Cmd+Alt N to switch window
		cmd_alt_tmux_prefix("1", "1"),
		cmd_alt_tmux_prefix("2", "2"),
		cmd_alt_tmux_prefix("3", "3"),
		cmd_alt_tmux_prefix("3", "3"),
		cmd_alt_tmux_prefix("4", "4"),
		cmd_alt_tmux_prefix("5", "5"),
		cmd_alt_tmux_prefix("6", "6"),
		cmd_alt_tmux_prefix("7", "7"),
		cmd_alt_tmux_prefix("8", "8"),
		cmd_alt_tmux_prefix("9", "9"),

		-- Tmux Session Manager
		cmd_alt_tmux_prefix("t", "T"),
		-- Tmux Session Selection (Classic)
		cmd_alt_tmux_prefix("s", "s"),

		-- Window Management
		cmd_alt_tmux_prefix("c", "c"),
		cmd_alt_tmux_prefix("x", "x"),
		cmd_alt_tmux_prefix(",", ","),

		-- Pane Management
		cmd_alt_tmux_prefix("m", "m"), -- Zoom pane
	},
}

return config
