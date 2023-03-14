
{config, pkgs, lib, ... }:

  let
    dbus-sway-enviroment = pkgs.writeTextFile {
    name = "dbus-sway-environment";
    destination = "/bin/dbus-sway-enviroment";
    executable = true;

    text = ''
      dbus-update-activation-enviroment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
      systemctl --user stop pipewire pipewire-media-session xdg-desktop-portal xdg-desktop-portal-wlr
      systemctl --user start pipewire pipewire-media-session xdg-desktop-portal xdg-desktop-portal-wlr
   '';
    };

configure-gtk = pkgs.writeTextFile {
name = "configure-gtk";
destination = "/bin/configure/-gtk";
executable = true;
text = let
schema = pkgs.gsettings-desktop-schemas;
datadir = "${schema}/share/gsetting-schemas/${schema.name}";
in ''
export XDG_DATA_DIRS=${datadir}:$XDG_DATA_DIRS
gnome_schema=org.gnome.desktop.interface
gsettings set $gnome_schema gtk-theme 'Dracula'
gsettings set $gnome_schema cursor-theme 'capitaine-cursors-white'
'';
};

in
{
environment.systemPackages = with pkgs; [
alacritty
sway
dbus-sway-enviroment
configure-gtk
wayland
xdg-utils
glib
dracula-theme
swaylock
swayidle
grim
slurp
wl-clipboard
mako
capitaine-cursors
];

services.dbus.enable = true;

xdg.portal = {
enable = true;
wlr.enable = true;
extraPortals = [pkgs.xdg-desktop-portal-gtk];


};

security.polkit.enable = true;
}
