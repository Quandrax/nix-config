{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
  };
  programs.fastfetch.enable = true;
}
