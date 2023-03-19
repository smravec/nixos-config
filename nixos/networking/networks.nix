{config, pkgs, ...}:
{
  networking.hostName = "framework";
  networking.wireless.enable = true;
  networking.wireless.userControlled.enable = true;

  networking.firewall.enable = false;
  #networking.firewall.allowedUDPPorts = [...];
  #networking.firewall.allowedTCPPorts = [...];

  #networking.proxy.default = "http://user:password@proxy:port/";
  #networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  #Define your networks here
  #Syntax : 
  #networking.wireless.networks.Network-Name.psk = "password";
}
