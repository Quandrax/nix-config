{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.btop.enable = true;
  programs.obs-studio.enable = true;
  programs.nushell.enable = true;
  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;
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

  home.packages = with pkgs; [
    grim
    slurp
    brightnessctl
    unzip
    pwvucontrol
    mpv
    nil
    krita
    tor-browser
  ];
}
