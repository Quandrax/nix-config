{ ... }:

{
  programs.waybar = {
    enable = true;
#    systemd.enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-center = [ "dwl/window"  ];

        modules-left = [ "custom/logo" "dwl/tags" ];

        "dwl/tags" = {
          num-tags = "4";
        };

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
        "memory" = {
          format = " {used}GiB";
          tooltip = true;
        };
        "wireplumber" = {
           format = " {volume}%";
           scroll-step = 2;
        };
        "clock" = {
          format = " {:%a %d.%m %H:%M}";
          tooltip-format = "{:%A, %d. %B %Y\n%H:%M:%S}";
        };
        "custom/logo" = {
          format = " ";
          tooltip = false;
        };
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
    #window,
    #network,
    #cpu,
    #memory,
    #battery,
    #wireplumber,
    #tags,
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

    #tags button.focused {
      color: #fff;
      background-color: #5294e2;
    }
    #tags button { color: #5277C3; }
    #tags { padding: 0; }
    #custom-logo { color: #5277C3; margin-left: 0; font-size: 15px; }
    #window { color: #fffafa; }
    #network { color: #8be9fd; }
    #cpu { color: #ffb86c; }
    #memory { color: #a18bd1; }
    #wireplumber { color: #9ff556; }
    #clock { color: #ededed; margin-right: 0; }
    '';
  };
}
