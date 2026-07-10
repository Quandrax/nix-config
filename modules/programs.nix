{ pkgs, inputs, ... }:

{
  imports = [
    inputs.mango.nixosModules.mango
  ];

  programs.nano.enable = false;
  programs.mango.enable = true;

  programs.bash = {
    completion.enable = false;
    enableLsColors = false;
  };

  environment.systemPackages = [ ];
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
