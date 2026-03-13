{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  programs.fastfetch.enable = true;
  programs.obs-studio.enable = true;
  programs.nushell.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Quandrax";
        email = "128057564+Quandrax@users.noreply.github.com";
      };
    };
  };

  home.packages = with pkgs; [
    brightnessctl
    unzip
    pavucontrol
    nil
  ];
}
