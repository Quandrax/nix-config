{ pkgs, ... }:

{
  programs.lazygit = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.prismlauncher.enable = true;

  home.packages = with pkgs; [
    unzip
    krita
  ];
}
