{ config, pkgs, ...}:
{
  wayland.windowManager.sway = {
  	enable = true;
  	wrapperFeatures.gtk = true;
   	config = rec {
  		modifier = "Mod4";
  		terminal = "alacritty";
  		startup = [
  			{command = "firefox";}
			{command = "alacritty";}
  		];
  	};
  };
}
