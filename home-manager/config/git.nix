{config, pkgs, ...}:
{
    programs.git = {
      enable = true;
      userName  = "Simon Mravec";
      userEmail = "simon.mravec@gmail.com";
      extraConfig = {
        init.defaultBranch = "main";
        pull.rebase = false;
      };
    };
}
