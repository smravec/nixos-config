{ config, pkgs, ... }:
{
  imports = [
	#Git
	./config/git.nix

	#Theme (cursor theme, gtk theme, ... )
	./config/theme.nix
	
	#Bash
	./config/bashrc.nix
	
	#Wezterm
	./config/wezterm.nix

	#Polybar
	./config/polybar.nix
	
	#Rofi
	./config/rofi.nix
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
	feh
	nix-prefetch-github
	run-scaled

	#File browser
	xfce.thunar

	#Interpreter
	python3	

	#Video editor
	shotcut
	
	#Image editor
	krita

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
