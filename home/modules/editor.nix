{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      theme = "monokai_pro";
      #theme = "adwaita-dark";
      #theme = "ayu_mirage";
      #theme = "base16_transparent";
      editor.lsp = {
        display-inlay-hints = true;
      };
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter = {
          command = "nixfmt";
        };
      }
    ];

    extraPackages = [
      pkgs.nil
      pkgs.nixfmt
      pkgs.tombi
    ];

    defaultEditor = false;
  };

  programs.zed-editor = {
    enable = true;
    defaultEditor = true;

    extensions = [
      "monokai-vibrant-amped"
      "material-icon-theme"

      "toml"
      "tombi"

      "zig"

      "slang"
      "glsl"
    ];

    userSettings = {
      helix_mode = true;
      diagnostics.inline.enabled = true;
      inlay_hints.enabled = true;
      disable_ai = true;
      telemetry = {
        diagnostics = false;
        metrics = false;
      };

      theme = {
        mode = "dark";
        light = "Ayu Light";
        dark = "Monokai Vibrant Amped";
      };
      project_panel = {
        dock = "left";
      };
    };

    mutableUserKeymaps = false;
    mutableUserSettings = false;
    mutableUserTasks = false;
  };
}
