{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  #Vesktop doesnt support global keybinds yet, stick to discord for now
  #programs.vesktop.enable = true;
  programs.fastfetch.enable = true;
#  programs.obs-studio.enable = true;

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
    brightnessctl
    pavucontrol
    discord
    hyprshot
  ];
}
