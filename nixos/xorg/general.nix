{config, pkgs, ...}:
{
  services.xserver.enable = true;
  
  #Touchpad
  services.xserver.libinput.enable = true;
  services.xserver.synaptics.palmDetect = true;  

  services.xserver.layout = "us";
  services.xserver.dpi = 200;

  #Needed for icon themes to work
  programs.dconf.enable = true;

  #Turn off screen blanking
  environment.extraInit = ''
    xset s off -dpms
  '';

  #Turn off guy for ssh auth
  programs.ssh.enableAskPassword = false;
}
