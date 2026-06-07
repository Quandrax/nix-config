{ lib, ... }:

{
  imports = [ ./hardware-configuration.nix ] ++ (lib.filesystem.listFilesRecursive ../../modules);

  networking.hostName = "Pc";

  boot.loader = {
    limine = {
      enable = true;
      biosDevice = "nodev";
      maxGenerations = 10;
      validateChecksums = true;
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
  };

  # services.libinput.enable = true;
  # services.printing.enable = true;

  system.stateVersion = "26.05";
}
