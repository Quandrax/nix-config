{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  #programs.vesktop.enable = true;
  programs.fastfetch.enable = true;
  #programs.obs-studio.enable = true;

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  programs.git = {
    enable = true;
    userName = "Quandrax";
    userEmail = "128057564+Quandrax@users.noreply.github.com";
  };

  home.packages = with pkgs; [
    nil
    pavucontrol
    discord
    hyprshot
    hyprpicker
  ];
}
