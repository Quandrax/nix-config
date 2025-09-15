{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      theme = "adwaita-dark";
    };
  };
}
