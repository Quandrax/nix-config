{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.vesktop.enable = true;
  programs.fastfetch.enable = true;
  programs.helix.enable = true;
  programs.zed-editor.enable = true;
  programs.rofi.enable = true;
  programs.btop.enable = true;

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
    nil
  ];
}
