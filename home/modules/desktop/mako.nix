{ pkgs, ... }:

{
  services.mako = {
    settings = {
      anchor = "top-right";
      background-color = "#000000";
      border-radius = 9;
      border-size = 2;
      default-timeout = 0;
      icons = 1;
      ignore-timeout = 1;
      max-visible = 8;
      layer = "overlay";
      font = "JetbrainsMono Nerd Font 11";
      width = 350;
      height = 200;
    };
    extraConfig = ''
      [urgency=low]
      border-color=#7dcfff
      background-color=#24242cee
      text-color=#d6ecff

      [urgency=normal]
      border-color=#bb9af7
      background-color=#282833ee
      text-color=#f3efff

      [urgency=high]
      border-color=#f7768e
      background-color=#25263aee
      text-color=#fff1f4
    '';
    enable = true;
  };

  home.packages = [ pkgs.libnotify ];
}
