{ lib, ... }:

{
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      theme = "0x96f";
      background-opacity = 0.8;
      font-size = 11;
      #window-padding-x = 20;
      #window-padding-y = 5;
    };
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    
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
}

