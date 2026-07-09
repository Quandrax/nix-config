{ pkgs, ... }:

{
  programs.btop.enable = true;
  programs.nushell.enable = true;
  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;
  };

  home.packages = with pkgs; [
    unzip
    krita
  ];
}
