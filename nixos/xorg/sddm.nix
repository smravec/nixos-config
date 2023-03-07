{config, pkgs, ...}:
{
  services.xserver.displayManager.sddm.enable = true;

  services.xserver.displayManager.sddm.theme = "${(pkgs.fetchFromGitHub {
    owner = "smravec";
    repo = "sddm-chili";
    rev = "2dbfa473f186ae91bb569172e7a3a58944769462";
    sha256 = "+qlr+tR/Idbs7aW4dp9KsPh/zBXzfXaH/QMjYphKAYw=";
})}";

  services.xserver.displayManager.sddm.settings = {
    Theme = { CursorTheme = "capitaine-cursors-white"; };
    };

  #Needed to display avatar icon
  users.users.simon.homeMode = "755";
}
