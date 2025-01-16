local wezterm = require 'wezterm';
local config = wezterm.config_builder();

config.initial_rows = 30;
config.initial_cols = 120;

config.font = wezterm.font("MesloLGS NF");
config.color_scheme = 'Whimsy';

config.keys = {
    { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
    { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentTab { confirm = true }},
}

config.ssh_domains = {
    {
        name = 'monka',
        remote_address = 'monka.nesquate.local',
        username = 'nesquate'
    }
}

config.launch_menu = {
    {
        label = 'Htop',
        args = { 'htop' }
    }
}

return config;
