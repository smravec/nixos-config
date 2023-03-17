{config, pkgs, ...}:
{
  programs.waybar.enable = true;
   
  programs.waybar.settings = {
  mainBar = {
    layer = "top";
    position = "top";
    height = 22;
    output = [
      "eDP-1"
    ];

    modules-left = [ "custom/logo" "sway/workspaces" "sway/mode" ];
    modules-right = [ "sway/language" "clock" "battery" ];

    "sway/workspaces" = {
      disable-scroll = true;
      all-outputs = true;
      persistent_workspaces = {
        "1" = []; 
        "2" = [];
	"3" = [];
	"4" = [];
      };
    };

    "clock" = {
      interval = 60;
      format = "{:%a %d/%m %I:%M}";
    };

    "battery" = {
      tooltip = false;
    };

    "sway/language" = {
      format = "{shortDescription}";
      tooltip = false;
      on-click = ''swaymsg input "1:1:AT_Translated_Set_2_keyboard" xkb_switch_layout next'';

    };
    "custom/logo" = {
      format = "";
      tooltip = false;
      on-click = ''bemenu-run -n'';
    };
  };
  };

}
