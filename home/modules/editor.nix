{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      theme = "adwaita-dark";
      #theme = "base16_transparent";
      editor.lsp = {
        display-inlay-hints = true;
      };
    };
  };

  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "toml"
      "monokai-vibrant-amped"
      "assembly"
      "material-icon-theme"
      "zig"
      "slang"
      "glsl"
      "slint"
    ];
    extraPackages = [ pkgs.nil ];

    userSettings = {
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
      helix_mode = true;
      diagnostics.inline.enabled = true;
      inlay_hints.enabled = true;
      languages.Nix.language_servers = [
        "nil"
        "!nixd"
      ];
    };

    mutableUserKeymaps = false;
    mutableUserSettings = false;
    mutableUserTasks = false;
  };
}
