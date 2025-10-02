-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 14
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.color_scheme = "catppuccin-macchiato"

-- Changing tab bar appearance
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.colors = {
	tab_bar = {
		background = "#1e2030", -- Base

		active_tab = {
			bg_color = "#FFA500", -- Mauve
			fg_color = "#cba6f7", -- Base
			intensity = "Bold",
		},

		inactive_tab = {
			bg_color = "#1e2030", -- Base
			fg_color = "#cad3f5", -- Text
		},

		inactive_tab_hover = {
			bg_color = "#363a4f", -- Surface1
			fg_color = "#cad3f5", -- Text
			italic = true,
		},

		new_tab = {
			bg_color = "#1e2030", -- Base
			fg_color = "#cad3f5", -- Text
		},

		new_tab_hover = {
			bg_color = "#363a4f", -- Surface1
			fg_color = "#cad3f5", -- Text
		},
	},
}

-- Finally, return the configuration to wezterm:
return config
