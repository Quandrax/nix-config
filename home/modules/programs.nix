{ pkgs, ... }:

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
    krita
    tor-browser
  ];
}
