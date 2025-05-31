{ config, pkgs, ...}:
{
  home.username = "drax";
  home.homeDirectory = "/home/drax";
  home.stateVersion = "25.05";

  imports = [
    ./modules/bash.nix
    ./modules/ghostty.nix
    ./modules/git.nix
    ./modules/hyprland.nix
    ./modules/programs.nix
    ./modules/rofi.nix
    ./modules/xdg.nix
  ];
}