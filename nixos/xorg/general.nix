{config, pkgs, ...}:
{
  services.xserver.enable = true;
  
  #Compositor
  services.picom.enable = true;

  #Touchpad
  services.xserver.libinput.enable = true;
  services.xserver.synaptics.palmDetect = true;  

  services.xserver.layout = "us";
  services.xserver.dpi = 200;

  #Needed for icon themes to work
  programs.dconf.enable = true;

  environment.extraInit = ''
    #Turn off screen blanking
    xset s off -dpms

    #Turn off gui for ssh auth
    unset -v SSH_ASKPASS
  '';
}
