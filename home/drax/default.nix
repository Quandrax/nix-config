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
    enable = true;
    nix-direnv.enable = true;
  };

  imports = [
    ../modules/desktop
    ../modules/editor.nix
    ../modules/firefox.nix
    ../modules/programs.nix
    ../modules/rofi.nix
    ../modules/terminal.nix
    ../modules/vesktop.nix
    ../modules/xdg.nix
    ../modules/yazi.nix
  ];
}
