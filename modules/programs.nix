{ pkgs, inputs, ... }:

{
  imports = [
    inputs.mango.nixosModules.mango
  ];

  programs.nano.enable = false;
  programs.mango.enable = true;
  programs.fish.enable = true;
  programs.bash.enable = false;

  environment.systemPackages = [ ];
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
