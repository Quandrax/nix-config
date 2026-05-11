{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.displayManager.ly.enable = true;
  programs.mango.enable = true;
  programs.fish.enable = true;

  programs.bash.enable = false;

#  hardware.opentabletdriver.enable = true;
#  hardware.uinput.enable = true;
#  boot.kernelModules = [ "uinput" ];

  environment.systemPackages = [ ];
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
