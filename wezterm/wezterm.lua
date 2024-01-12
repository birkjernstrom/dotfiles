local wezterm = require("wezterm")
local wt_action = wezterm.action
local kanagawa = require("kanagawa-dragon")

-- Inspiraton from Josh Medeski
local cmd_alt_tmux_prefix = function(key, tmux_key)
  local tmux_leader = {
    mod = "CTRL",
    key = "s",
  }
  return {
    mods = "ALT|CMD",
    key = key,
    action = wt_action.Multiple({
      wt_action.SendKey({ mods = tmux_leader.mod, key = tmux_leader.key }),
      wt_action.SendKey({ key = tmux_key }),
    }),
  }
end

local config = {
  adjust_window_size_when_changing_font_size = false,

  font = wezterm.font({
    family = "BerkeleyMono Nerd Font Mono",
    weight = "Regular",
    italic = false,
    harfbuzz_features = { "calt=0", "clig=0", "liga=0", "zero" },
  }),
  font_size = 16,
  colors = kanagawa,
  window_decorations = "RESIZE",
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
