{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      theme = "monokai_pro";
      #theme = "adwaita-dark";
      #theme = "ayu_mirage"
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

    defaultEditor = true;
  };
}
