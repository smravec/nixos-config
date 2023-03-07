{ config, pkgs, ... }:

{
  home.username = "simon";
  home.homeDirectory = "/home/simon";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
	neovim
	chromium
	wezterm
	firefox
	acpi
	python3
	cmatrix
	vscodium
	kpcli
	qutebrowser
	pulsemixer
	krita
	xfce.thunar
	nix-prefetch-github
	signal-desktop
	feh
	libreoffice-still
	onlyoffice-bin
        ];

  programs.git = {
    enable = true;
    userName  = "Simon Mravec";
    userEmail = "simon.mravec@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };

  #home.file.".face.icon".source = "/home/simon/.face.icon";
  gtk.enable = true; 
  gtk.cursorTheme.package = pkgs.capitaine-cursors;
  gtk.cursorTheme.name =  "capitaine-cursors-white";
  gtk.cursorTheme.size = 48;
  home.pointerCursor.package = pkgs.capitaine-cursors;
  home.pointerCursor.name = "capitaine-cursors-white";
  home.pointerCursor.size = 48;
  home.pointerCursor.x11.defaultCursor = "capitaine-cursors-white";
  xsession.enable = true;  
  home.pointerCursor.x11.enable = true;
  gtk.iconTheme.package = pkgs.whitesur-icon-theme;
  gtk.iconTheme.name = "WhiteSur-dark";
  gtk.theme.package = pkgs.whitesur-gtk-theme;
  gtk.theme.name = "WhiteSur-Dark" ;
  gtk.gtk3.extraConfig = { 
	gtk-dialogs-use-header=false;
	gtk-cursor-theme-size=0;
	gtk-toolbar-style="GTK_TOOLBAR_BOTH_HORIZ";
	gtk-toolbar-icon-size="GTK_ICON_SIZE_LARGE_TOOLBAR";
	gtk-button-images=0;
	gtk-menu-images=0;
	gtk-enable-event-sounds=1;
	gtk-enable-input-feedback-sounds=1;
	gtk-xft-antialias=1;
	gtk-xft-hinting=1;
	gtk-xft-hintstyle="hintslight";
	gtk-xft-rgba="none";
};
 #home.pointerCursor = "42";
  #home.file.".icons/default".source = "${pkgs.vanilla-dmz}/share/icons/Vanilla-DMZ"; 
  #xsession = {
  #	enable= true;
  #	pointerCursor = {
  #  size = 48;
  #  #package = pkgs.nur.repos.ambroisie.vimix-cursors;
    #name = "Vimix-white-cursors";
    # name = "Vimix-cursors";

  #  package = pkgs.capitaine-cursors;
  #  name = "capitaine-cursors";

    # package = pkgs.nur.repos.ambroisie.volantes-cursors;
    # name = "volantes_light_cursors";
    # name = "volantes_cursors";

    # package = pkgs.nur.repos.dan4ik605743.lyra-cursors;
    # name = "LyraF-cursors";
  #};
  #}
    
}
