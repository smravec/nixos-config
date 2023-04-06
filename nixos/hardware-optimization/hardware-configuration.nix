# TODO: you should commit your hardware-configuration.nix
# This is just a sample so that the config builds
{
  fileSystems."/" = {
    device = "none";
    fsType = "tmpfs";
    options = [ "defaults" "size=2G" "mode=755" ];
  };
}
