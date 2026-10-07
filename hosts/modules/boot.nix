{ config, pkgs, ... }:

{
  boot.loader = {
    limine = {
      enable = true;
      maxGenerations = 10;
      enrollConfig = true;
      validateChecksums = true;
      panicOnChecksumMismatch = true;

      secureBoot.enable = true;
    };

    timeout = 60;
    efi.canTouchEfiVariables = true;
  };

  environment.systemPackages = [ pkgs.sbctl ];

  services.greetd = {
    settings = {
      default_session = {
        command = ''
          ${pkgs.tuigreet}/bin/tuigreet \
          --time --user-menu --asterisks \
          --sessions ${config.services.displayManager.sessionData.desktops}/share/wayland-sessions \
          --xsessions ${config.services.displayManager.sessionData.desktops}/share/xsessions
        '';
        user = "greeter";
      };
    };
    useTextGreeter = true;
    enable = true;
  };
}
