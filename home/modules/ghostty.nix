
{ config, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "0x96f";
      background-opacity = 0.8;
    };
  };
}
