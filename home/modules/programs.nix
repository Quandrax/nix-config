{ pkgs, pkgs-unstable, ... }:

{
  programs.btop.enable = true;
  programs.obs-studio.enable = true;
  programs.nushell.enable = true;
  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;
  };

  home.packages = with pkgs; [
    grim
    slurp
    brightnessctl
    unzip
    pwvucontrol
    mpv
    nil
    krita
    tor-browser
    pkgs-unstable.concord-tui
  ];
}
