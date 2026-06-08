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
      user.name = "Quandrax";
      init.defaultBranch = "main";
    };
    includes = [
      {
        condition = "gitdir:~/Codeberg/";
        contents.user.email = "Quandrax@noreply.codeberg.org";
      }

      {
        condition = "gitdir:~/Github/";
        contents.user.email = "128057564+Quandrax@users.noreply.github.com";
      }

      {
        condition = "gitdir:~/NixConfig/";
        contents.user.email = "128057564+Quandrax@users.noreply.github.com";
      }
    ];
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
      expansion = "nixos-rebuild switch --flake ~/NixConfig#laptop";
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
