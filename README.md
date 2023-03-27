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
Copy ``/etc/nixos/hardware-configuration.nix`` to ``nixos/hardware-optimization``
```
cp /etc/nixos/hardware-configuration.nix ~/nixos-config/nixos/hardware-optimization/
```
Symlink this repository to ``/etc`` <br/>
```
cd /etc
```
```
sudo rm -rf nixos
```
```
sudo ln -s ~/nixos-config/nixos/ .
```
Rebuild your system
```
sudo nixos-rebuild switch
```
### Home manager
Download home-manager standalone ( after adding the home-manager channel reboot to refresh the $NIX_PATH var ) <br/>
https://nix-community.github.io/home-manager/index.html#sec-install-standalone <br/>
Symlink ``home-manager`` directory to ``~/.config`` <br/>
```
cd ~/.config
```
```
rm -rf nixpkgs
```
```
ln -s ~/nixos-config/home-manager/ nixpkgs
```
Add unstable channel <br/>
https://nix-community.github.io/home-manager/index.html#_how_do_i_install_packages_from_nixpkgs_unstable <br/>
Rebuild home-manager
```
home-manager switch
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
