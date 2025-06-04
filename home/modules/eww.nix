{ config, pkgs, ... }:

{
  programs.eww = {
    enable = true;
    configDir = /etc/nixos/home/modules/eww;
  };
}
