{ config, pkgs, ...}:
{
  home.username = "drax";
  home.homeDirectory = "/home/drax";
  home.stateVersion = "25.11";

  services.mako.enable = true;

  imports = [
    ./modules/ghostty.nix
    ./modules/helix.nix
    ./modules/hyprland.nix
    ./modules/programs.nix
    ./modules/rofi.nix
    ./modules/waybar.nix
    ./modules/yazi.nix
  ];
}
