{ pkgs, ... }:

{
  users.users.drax = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
    ];
    shell = pkgs.fish;
    packages = [ ];
  };
}
