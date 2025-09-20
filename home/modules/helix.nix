{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      #theme = "adwaita-dark";
      theme = "base16_transparent";
    };
  };
}
