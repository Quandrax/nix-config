{ inputs, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    systemd.targets = [ "mango-session.target" ];

    package = inputs.waybar.packages.${pkgs.stdenv.hostPlatform.system}.default;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-center = [ "mango/window" ];

        modules-left = [
          "custom/logo"
          "mango/workspaces"
        ];

        "mango/workspaces" = {
          on-click = "activate";
          format = "";
          hide-empty = true;
        };

        modules-right = [
          "network"
          "cpu"
          "memory"
          "wireplumber"
          "clock"
        ];

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

      #mainBar {
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
      #workspaces,
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

      #workspaces {
        padding: 0;
        margin-left: 6px;
      }
      #workspaces button.active {
        color: #fff;
        background-color: #5294e2;
      }
      #workspaces button {
        color: #5277C3;
        min-width: 30px;
      }

      #custom-logo { color: #7ebae4; margin-left: 0; }
      #window { color: #fffafa; }
      #network { color: #8be9fd; }
      #cpu { color: #ffb86c; }
      #memory { color: #a18bd1; }
      #wireplumber { color: #9ff556; }
      #clock { color: #ededed; margin-right: 0; }
    '';
  };
}
