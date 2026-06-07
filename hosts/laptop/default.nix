{ lib, ... }:

{
  imports = [ ./hardware-configuration.nix ] ++ (lib.filesystem.listFilesRecursive ../../modules);

  networking.hostName = "Blyat";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # services.libinput.enable = true;
  # services.printing.enable = true;

  system.stateVersion = "25.11";
}
