{ inputs, lib, ... }:

{
  imports = [
    ./hardware-configuration.nix
    inputs.nixos-hardware.nixosModules.lenovo-ideapad-s145-15api
  ]
  ++ (lib.filesystem.listFilesRecursive ../../modules);

  networking.hostName = "laptop";
  hardware.enableRedistributableFirmware = true;

  programs.nh = {
    enable = true;
    flake = "/home/drax/Projects/NixConfig";
  };

  # services.libinput.enable = true;
  # services.printing.enable = true;

  system.stateVersion = "25.11";
}
