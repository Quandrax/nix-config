{ pkgs, ... }:

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
}
