{ config, pkgs, ... }:

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
    extensions = [ "nix" "toml" ];
    extraPackages = [ pkgs.nil ];
    userSettings = {
      disable_ai = true;
      telemetry = {
        diagnostics = false;
        metrics = false;
      };
      helix_mode = true;
    };
  };
}
