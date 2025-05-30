{ config, pkgs, ...}:
{
  home.username = "drax";
  home.homeDirectory = "/home/drax";

  programs.git = {
    enable = true;
    userName = "Quandrax";
    userEmail = "NotARealEmail@proton.me";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  programs.firefox.enable = true;
  programs.btop.enable = true;

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "0x96f";
    };
  };

  programs.rofi = {
    enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "monitor" = ",preferred,auto,1";

      "$mod" = "SUPER";
      "$terminal" = "ghostty";
      "$menu" = "rofi -show drun"; 
 
      input =  {
       "kb_layout" = "de";
     };

      bind = [
        "$mod, Q, exec, $terminal"
        "$mod, R, exec, $menu"
        "$mod, C, killactive"
        "$mod, F, Fullscreen, 1"      
      ];
    };
  };

  home.stateVersion = "25.05";
}
