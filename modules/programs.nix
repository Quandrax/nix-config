{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.displayManager.ly.enable = true;
  programs.mango.enable = true;
  programs.fish.enable = true;

  environment.systemPackages = [ ];
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
