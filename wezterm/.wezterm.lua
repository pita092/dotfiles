local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe" }
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.color_scheme = "nord"
config.window_decorations = "RESIZE"
config.window_background_opacity = 1
config.hide_tab_bar_if_only_one_tab = false

config.keys = {

	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DecreaseFontSize,
	},
	{
		key = "=",
		mods = "CTRL",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "0",
		mods = "CTRL",
		action = wezterm.action.ResetFontAndWindowSize,
	},
}

config.mouse_bindings = {
	-- paste
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = act({ PasteFrom = "Clipboard" }),
	},
}

return config
