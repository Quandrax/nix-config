{ config, pkgs, ... }:

{
  home.username = "drax";
  home.homeDirectory = "/home/drax";
  home.stateVersion = "25.11";

  imports = [
    ./modules/desktop.nix
    ./modules/editor.nix
    ./modules/ghostty.nix
    ./modules/mako.nix
    ./modules/programs.nix
    ./modules/rofi.nix
    ./modules/vesktop.nix
    ./modules/waybar.nix
    ./modules/yazi.nix
  ];
}
