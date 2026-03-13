{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [ ./hardware-configuration.nix ] ++ (lib.filesystem.listFilesRecursive ../../modules);

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # services.libinput.enable = true;
  # services.printing.enable = true;
}
