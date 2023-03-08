{config, pkgs, ...}:
{
  programs.wezterm.enable = true;
  programs.wezterm.extraConfig = (builtins.readFile ./wezterm.lua);
}
