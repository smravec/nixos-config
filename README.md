# NixOS Config

<img src=preview.png/>

<p align=center> <b>Minimal Sway NixOS rice with full silent boot</b> </p>

## Installation
Install nixos with this guide (make sure to use systemd boot) <br/>
https://nixos.org/manual/nixos/stable/ <br/>
Clone this repository (logged in as user) <br/>
```
cd ~
```
```
git clone https://github.com/smravec/nixos-config
```
### Nixos
Go to ``nixos/networking/networks.nix`` and setup wifi (in the cloned repository) <br/>

Rebuild your system
```
sudo nixos-rebuild switch --flake .
```
### Home manager
Get home-manager:
```
nix shell nixpkgs#home-manager
```
```
home-manager switch --flake .
```
### Sway
Symlink sway config <br/>
```
cd ~/.config
```
```
ln -s ~/nixos-config/nixos/wayland/sway/ .
```
***PS: This config is made for the Framework laptop 11th gen***
