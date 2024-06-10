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

-- local animes = {
--     "lycoreco.jpg",
--     "frieren.jpg",
--     "mdud.jpg",
-- }
--
-- local anime_base_path = "/home/boydbloemsma/.anime/"
-- if wezterm.target_triple:find("darwin") ~= nil then
--     anime_base_path = "/Users/boydbloemsma/.anime/"
-- end
--
-- local dimmer = {
--     brightness = 0.1,
--     hue = 1,
--     saturation = 1,
-- }
--
-- config.background = {
--     {
--         source = {
--             File = anime_base_path .. animes[math.random(#animes)],
--         },
--         height = "Cover",
--         hsb = dimmer,
--     }
-- }
--
-- config.text_background_opacity = 1
--
-- config.window_padding = {
--   left = 0,
--   right = 0,
--   top = 0,
--   bottom = 0,
-- }
--
config.color_scheme = 'Gruvbox Dark (Gogh)'

return config 
