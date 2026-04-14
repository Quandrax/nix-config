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
        email = "128057564+Quandrax@users.noreply.github.com";
      };
    };
  };

  home.packages = with pkgs; [
    grim
    slurp
    brightnessctl
    unzip
    pavucontrol
    nixd
    prismlauncher
  ];
}
