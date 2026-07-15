{ lib, ... }:

{
  programs.nushell = {
    settings = {
      completions.external = {
        enable = true;
        max_results = 200;
      };
    };
    enable = true;
  };

  programs.carapace = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "0x96f";
      background-opacity = 0.8;
      font-size = 11;
      window-padding-x = 20;
      window-padding-y = 5;
      window-padding-color = "extend-always";
      shell-integration = "nushell";
      command = "nu";
    };
  };

  programs.starship = {
    enable = true;
    enableNushellIntegration = true;

    settings = {
      format = lib.concatStrings [
        "$directory"
        "$git_branch"
        "$git_status"
        "$git_commit"
        "$git_metrics"
        "$rust"
        "$zig"
        "$nix_shell"
        "\n"
        "$character"
      ];

      git_branch = {
        format = "[$symbol$branch(:$remote_branch)]($style) ";
        symbol = " ";
      };

      git_commit = {
        tag_disabled = false;
      };

      git_metrics = {
        disabled = false;
      };

      directory = {
        truncate_to_repo = false;
      };

      character = {
        # format = "[ ](bright-green)";
        # format = "[> ](bright-green)";
      };

      rust = {
        format = "[$symbol($version )]($style)";
      };

      zig = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

    };
  };

  programs.zoxide = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.btop.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.file.".local/share/fastfetch/logos/nixlogo.png".source = ./nixlogo.png;
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixlogo.png";
        width = 40;
        #height = 20;
      };
      display = {
        size = {
          binaryPrefix = "si";
        };
        color = "blue";
        separator = ": ";
      };

      modules = [
        "title"
        "separator"
        "os"
        #"host"
        "kernel"
        "uptime"
        "packages"
        "processes"
        "shell"
        "display"
        "de"
        "wm"
        "wmtheme"
        "editor"
        "theme"
        "icons"
        "font"
        "cursor"
        "terminal"
        "terminalfont"
        "wallpaper"
        #"cpu"
        #"gpu"
        #"memory"
        #"disk"
        "opengl"
        "vulkan"
        "version"
        "battery"
        "locale"
        "colors"
      ];
    };
  };
}
