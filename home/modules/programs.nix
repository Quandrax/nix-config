{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  programs.vesktop.enable = true;
  programs.fastfetch.enable = true;
  programs.zed-editor.enable = true;
  programs.obs-studio.enable = true;

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Quandrax";
        email = "128057564+Quandrax@users.noreply.github.com";
      }; 
    };
  };

  #programs.lazygit = {
  #  enable = true;
  #};

  home.packages = with pkgs; [
  ];
}
