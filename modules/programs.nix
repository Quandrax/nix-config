{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.mango.nixosModules.mango
  ];

  nixpkgs.config.allowUnfree = true;

  programs.mango.enable = true;
  programs.fish.enable = true;
  programs.bash.enable = false;
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

  #  hardware.opentabletdriver.enable = true;
  #  hardware.uinput.enable = true;
  #  boot.kernelModules = [ "uinput" ];

  environment.systemPackages = [ ];
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
