{ config, pkgs, ... }:
{
  imports = [
	#Git
	./config/git.nix

	#Theme (cursor theme, gtk theme, ... )
	./config/theme.nix
	
	#Bash
	./config/bashrc.nix
	
	#Alacritty
	./config/alacritty.nix

	#Rofi
	#./config/rofi.nix

	#Neovim

	#Waybar
	./config/waybar.nix
  ];
  
  home.packages = with pkgs; [
	#Text editor
	neovim
	vscodium

	#Browser
	firefox
	chromium
	qutebrowser

	#CLI program
	kpcli
	acpi
	pulsemixer
	cmatrix
	#feh
	nix-prefetch-github
	xorg.xeyes
	bemenu
	wofi

	#File browser
	#xfce.thunar

	#Interpreter
	#python3	

	#Video editor
	#shotcut
	
	#Image editor
	#krita

	#Messaging app
	signal-desktop

	#Office suite
	onlyoffice-bin

	#Font
	jetbrains-mono
	nerdfonts
        ];

  home.username = "simon";
  home.homeDirectory = "/home/simon";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;
}
