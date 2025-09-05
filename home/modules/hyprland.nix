{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "monitor" = ",preferred,auto,1";

      "$mod" = "SUPER";
      "$terminal" = "ghostty";
      "$menu" = "rofi -show drun"; 

      exec-once = [
        "hyprpaper"
        "waybar"
      ];
 
      general = {
        "gaps_in" = "5";
        "gaps_out" = "9";
        
        "border_size" = "2";

        "col.active_border" = "rgba(f9f9f9cc)";
        
        "allow_tearing" = "false";
        "layout" = "dwindle";
      };

      dwindle = {
        "pseudotile" = "true";
        "preserve_split" = "true";
      };

      input = {
       "kb_layout" = "de";
      };

      decoration = {
        "rounding" = "10";
        "rounding_power" = "2";

        "blur" = {
          "enabled" = "true";
          "size" = "3";
          "passes" = "1";
          "vibrancy" = "0.1696";
        };
      };
      
      master = {
        "new_status" = "master";
      };

      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];

      bind = [
        "$mod, Q, exec, $terminal"
        "$mod, R, exec, $menu"
        "$mod, C, killactive"
        "$mod, F, Fullscreen, 1"
        "$mod, V, togglefloating" 

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        "$mod, left, swapwindow, l"
        "$mod, right, swapwindow, r"
        "$mod, up, swapwindow, u"
        "$mod, down, swapwindow, d"

        "SUPER_SHIFT, left, movefocus, l"
        "SUPER_SHIFT, right, movefocus, r"
        "SUPER_SHIFT, up, movefocus, u"
        "SUPER_SHIFT, down, movefocus, d"

        "$mod, mouse_up, workspace, e-1"
        "$mod, mouse_down, workspace, e+1"

        "SUPER_SHIFT, 1, movetoworkspacesilent, -1"
        "SUPER_SHIFT, 2, movetoworkspacesilent, +1"     
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 1%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
        ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
      ];
    };
  };

  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "/etc/nixos/home/modules/lumi.png" ];
      wallpaper = [ ",/etc/nixos/home/modules/lumi.png" ];      
    };
  };
}
