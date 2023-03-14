{ config, pkgs, ... }:
{
  #silent boot
  disabledModules = ["system/boot/stage-2.nix" "system/boot/stage-1.nix" "system/etc/etc.nix"];  

  imports =
    [
	#silent boot
	./silent-boot/stage-2-silent.nix
	./silent-boot/stage-1-silent.nix
	./silent-boot/etc-silent.nix
	./silent-boot/boot.nix      
 
	#hardware optimization
	./hardware-optimization/framework-specific.nix	
	./hardware-optimization/hardware-configuration.nix
	./hardware-optimization/video-acceleration.nix
	./hardware-optimization/ssd.nix

	#audio
	./audio/general.nix
	./audio/bluetooth.nix
        
	#networking
	./networking/networks.nix
	
	#wayland
	./wayland/general.nix
	./wayland/window-manager.nix

	#xorg
	#./xorg/sddm.nix
	#./xorg/general.nix
	#./xorg/window-manager.nix
    ];

  time.timeZone = "Europe/Bratislava";

  environment.sessionVariables = rec {
    XDG_CONFIG_HOME = "\${HOME}/.config";
    XCURSOR_SIZE = "24";
  };
    
  users.users.simon = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
   };
  
  environment.systemPackages = with pkgs; [
    vim
    wget
    tmux
    freshfetch
    
    #sddm
    #libsForQt5.qt5.qtquickcontrols
    #libsForQt5.qt5.qtgraphicaleffects
    capitaine-cursors
   ];
  
  #programs.mtr.enable = true;
  #programs.gnupg.agent = {
  #  enable = true;
  #  enableSSHSupport = true;
  #};

  #services.openssh.enable = true;
  services.printing.enable = true;    
 
  system.stateVersion = "22.11";
}
