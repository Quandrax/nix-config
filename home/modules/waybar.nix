{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-center = [ "hyprland/window"  ];
        modules-left = [ "custom/logo" "wlr/taskbar" ];
        modules-right = [ "network" "cpu" "memory" "wireplumber" "clock" ];  
  
        "network" = {
            format-wifi = "  Connected";
            format-ethernet = "󰈁";
            format-disconnected = "󰖪 Offline";
            tooltip = true;
        };
        "cpu" = {
          format = " {usage}%";
        };
        # "memory" = {  };
        "wireplumber" = {
           format = " {volume}%";
           scroll-step = 2;
        };
        "clock" = {
          format = " {:%a %d.%m %H:%M}";
          tooltip-format = "{:%A, %d. %B %Y\n%H:%M:%S}";
        };
        "wlr/taskbar" = {
          format = "{icon}";
          icon-size = 15;
        };
        "custom/logo" = { format = " "; };   
      };
    };
  
    style = ''
    * {
      border: none;
      border-radius: 10px;
      padding: 0 6px;
      font-family: "JetBrainsMono Nerd Font";
      font-size: 13px;
      margin: 0;
    }

    window#waybar {
      background: transparent;
      margin: 0;
      padding: 0;
    }

    #mainBar{
      margin: 0;
      padding: 0;
    }    

    #custom-logo,
    #taskbar,
    #window,
    #network,
    #cpu,
    #memory,
    #battery,
    #wireplumber,
    #clock {
      background: #2e3440;
      margin-top: 6px;
      margin-left: 3px;
      padding-left: 10px;
      margin-bottom: 0px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
    }

    #custom-logo { color: #5277C3; margin-left: 0; }
    #taskbar { padding: 0; }
    #window { color: #fffafa; }
    #network { color: #8be9fd; }
    #cpu { color: #ffb86c; }
    #memory { color: #a18bd1; }
    #wireplumber { color: #ff79c6; }
    #clock { color: #bfbfbf; margin-right: 0; }
    '';
  };
}
