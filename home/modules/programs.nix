{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;

  home.packages = with pkgs; [
    discord
  ];
}
