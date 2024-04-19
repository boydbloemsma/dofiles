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

return config 
