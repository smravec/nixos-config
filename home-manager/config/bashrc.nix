{config, pkgs, ...}:
{
  programs.bash.enable = true;
  programs.bash.bashrcExtra = (builtins.readFile ./bashrc); 
}
