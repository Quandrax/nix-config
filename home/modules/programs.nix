{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  programs.vesktop.enable = true;
  programs.fastfetch.enable = true;
  programs.obs-studio.enable = true;

  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" ];
    extraPackages = [ pkgs.nil ];
    userSettings = {
      features.copilot = false;
      telemetry.metrics = false;
    };
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
    pavucontrol
    nil
  ];
}
