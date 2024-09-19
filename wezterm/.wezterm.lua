local wezterm = require("wezterm")

local config = {}

-- provides clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Macho"
config.font = wezterm.font_with_fallback({
    "JetBrains Mono",
    { family = "Symbols Nerd Font Mono", scale = 0.75 }
})
config.use_cap_height_to_scale_fallback_fonts = true
config.font_size = 12

config.colors = {
	cursor_bg = "silver",
}

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.window_decorations = "RESIZE"

-- tab bar
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true

local mux = wezterm.mux
wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

return config
