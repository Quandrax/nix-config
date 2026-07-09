{ config, ... }:

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
        condition = "gitdir:~/Projects/Codeberg/";
        contents.user.email = "Quandrax@noreply.codeberg.org";
      }

      {
        condition = "gitdir:~/Projects/Github/";
        contents.user.email = "128057564+Quandrax@users.noreply.github.com";
      }

      {
        condition = "gitdir:~/Projects/NixConfig/";
        contents.user.email = "128057564+Quandrax@users.noreply.github.com";
      }
    ];
  };

  programs.direnv = {
    config = {
      whitelist = {
        prefix = [
          "${config.xdg.userDirs.projects}"
        ];
      };
    };
    enable = true;
    nix-direnv.enable = true;
  };

  programs.fish.enable = true;
  programs.fish.shellAbbrs = {
    nrs = {
      expansion = "nixos-rebuild switch --flake ~/Projects/NixConfig#laptop";
      position = "anywhere";
    };

    ntr = {
      expansion = "nix flake init -t ~/Projects/NixConfig#rust";
    };

    ntz = {
      expansion = "nix flake init -t ~/Projects/NixConfig#zig";
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
    ../modules/xdg.nix
    ../modules/yazi.nix
  ];
}
