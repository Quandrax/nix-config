{ ... }:

{
  home = {
    username = "drax";
    homeDirectory = "/home/drax";
    stateVersion = "25.11";

    enableNixpkgsReleaseCheck = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Quandrax";
        email = "Quandrax@noreply.codeberg.org";
        #github noreply email
        #email = "128057564+Quandrax@users.noreply.github.com";
      };
      init.defaultBranch = "main";
    };
  };

  programs.direnv = {
    config = {
      whitelist = {
        prefix = [
          "/home/drax/Github"
          "/home/drax/Codeberg"
        ];
      };
    };
    enable = true;
    nix-direnv.enable = true;
  };

  programs.fish.enable = true;
  programs.fish.shellAbbrs = {
    nrs = {
      expansion = "nixos-rebuild switch --flake ~/NixConfig#Blyat";
      position = "anywhere";
    };
  };

  imports = [
    ../modules/desktop.nix
    ../modules/editor.nix
    ../modules/firefox.nix
    ../modules/mako.nix
    ../modules/programs.nix
    ../modules/rofi.nix
    ../modules/terminal.nix
    ../modules/vesktop.nix
    ../modules/waybar.nix
    ../modules/yazi.nix
  ];
}
