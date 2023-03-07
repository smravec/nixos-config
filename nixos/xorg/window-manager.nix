{config, pkgs, ...}:
{
  services.xserver.windowManager.awesome = {
      enable = true;
      luaModules = with pkgs.luaPackages; [
          luarocks
          luadbi-mysql
          ];
      };
}
