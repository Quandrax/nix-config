{ config, pkgs, ... }:

{
  home = {
    username = "drax";
    homeDirectory = "/home/drax";
    stateVersion = "25.11";

    enableNixpkgsReleaseCheck = true;
  };

  imports = [
    ./modules/desktop.nix
    ./modules/editor.nix
    ./modules/mako.nix
    ./modules/programs.nix
    ./modules/rofi.nix
    ./modules/terminal.nix
    ./modules/vesktop.nix
    ./modules/waybar.nix
    ./modules/yazi.nix
  ];
}
