{config, pkgs, ...}:
{
  services.polybar.enable = true;
  
  nixpkgs.config = {
    packageOverrides = pkgs: rec {
      polybar = pkgs.polybar.override {
        i3Support = true;
      };
    };
  };

  services.polybar.config = 
  {
  "bar/top" = {
    monitor = "\${env:MONITOR:eDP-1}";
    width = "100%";
    height = "38px";
    radius = 0;

    background = "#292828";

    modules-left = "launcher workspaces";
    modules-right = "keyboard date battery";

    font-0 = "JetBrains Mono:size=14;4";
    #Logo
    font-1 = "NotoSans Nerd Font Mono:size=23;5";
    #Space
    font-2 = "JetBrains Mono:size=40";
  };

  "module/launcher" = {
    type = "custom/text";

    content = "%{T1}%{T-}";
    content-padding = 1;
    click-left = "rofi -show drun";
  };

  "module/workspaces" = {
     type = "custom/text";
     
     content = "1%{T2} %{T-}2%{T2} %{T-}3%{T2} %{T-}4";
     content-padding = 2;
  }; 

  "module/keyboard" = {
    type = "custom/script";
    tail = true;
    exec = "/home/simon/nixos-config/home-manager/config/keyboard-status.sh";
    click-left = "/home/simon/nixos-config/home-manager/config/keyboard.sh";

  };


  "module/date" = {
    type = "internal/date";
    internal = 5;
    date = "| %a %d/%m %I:%M |";
    label = " %date% ";
  };

  "module/battery" = {
    type = "internal/battery";
    battery = "BAT1";
    adapter = "ACAD";

    label-charging = "%percentage%% ";
    label-discharging = "%percentage%% ";
    label-full = "%percentage%% ";
    label-low = "%percentage%% ";
  };
  };

  services.polybar.script = "polybar bar &";
}
