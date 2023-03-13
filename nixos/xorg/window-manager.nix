{config, pkgs, ...}:
{
  services.xserver.windowManager.i3 = {
      enable = true;
      configFile = "/home/simon/nixos-config/nixos/xorg/config.i3";
      };
}
