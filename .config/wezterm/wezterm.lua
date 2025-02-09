local wezterm = require 'wezterm'

local config = wezterm.config_builder()

--
-- https://wezfurlong.org/wezterm/colorschemes/
config.color_scheme = 'Modus Vivendi (Gogh)'

config.initial_cols = 160
config.initial_rows = 48

config.font = wezterm.font 'UDEV Gothic NF'
config.font_size = 13

config.window_background_opacity = 0.85

config.enable_tab_bar = false
config.use_resize_increments = true

--

return config