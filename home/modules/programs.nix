{ pkgs, ... }:

{
  programs.lazygit = {
    enable = true;
    enableNushellIntegration = true;
  };

  home.packages = with pkgs; [
    unzip
    krita
  ];
}
