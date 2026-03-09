{ config, pkgs, ... }:

{
  home.username = "drax";
  home.homeDirectory = "/home/drax";
  home.stateVersion = "25.11";

  programs.nushell.enable = true;

  imports = [
    #    ./modules/ghostty.nix
    #    ./modules/helix.nix
    #    ./modules/desktop.nix
    ./modules/niri
    ./modules/programs.nix
    ./modules/ghostty.nix
    #    ./modules/rofi.nix
    #    ./modules/waybar.nix
    #    ./modules/yazi.nix
    #    ./modules/zellij.nix
  ];
}
