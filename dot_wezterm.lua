local wezterm = require('wezterm')
local act = wezterm.action;

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.initial_cols = 128
config.initial_rows = 32

config.keys = {
    {
        key = 'h',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection('Left'),
    },
    {
        key = 'l',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection('Right'),
    },
    {
        key = 'k',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection('Up'),
    },
    {
        key = 'j',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection('Down'),
    },
}

local animes = {
    "lycoreco.jpg",
    "frieren.jpg",
    "mdud.jpg",
}

local anime_base_path = ""
if wezterm.target_triple:find("darwin") ~= nil then
    anime_base_path = "/Users/boydbloemsma/.anime/"
end

config.window_background_image = anime_base_path .. animes[math.random(#animes)]
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.05,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0
}
config.text_background_opacity = 0.7

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


return config 
