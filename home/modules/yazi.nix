{ config, pkgs, ... }:

{
  programs.yazi = {
    enable = true;

    enableBashIntegration = true;

    settings = {
      mgr = {
        show_hidden = true;
      };
    };
  };
}
