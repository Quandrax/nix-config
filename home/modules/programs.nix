{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  programs.vesktop.enable = true;
  programs.fastfetch.enable = true;
  programs.lazygit.enable = true;

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

  home.packages = with pkgs; [
    unzip
  ];
}
