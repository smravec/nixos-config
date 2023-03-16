{config, pkgs, ...}:
{

  home.packages = [ pkgs.dconf ];
  gtk.enable = true;
  
  gtk.cursorTheme.package = pkgs.capitaine-cursors;
  gtk.cursorTheme.name =  "capitaine-cursors-white";
  gtk.cursorTheme.size = 24;
  
  home.pointerCursor.package = pkgs.capitaine-cursors;
  home.pointerCursor.name = "capitaine-cursors-white";
  home.pointerCursor.size = 24;
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
        gtk-enable-event-sounds=0;
        gtk-enable-input-feedback-sounds=1;
        gtk-xft-antialias=1;
        gtk-xft-hinting=1;
        gtk-xft-hintstyle="hintslight";
        gtk-xft-rgba="none";
	};
}
