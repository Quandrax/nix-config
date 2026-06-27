{ inputs, users }:

let
  home-manager = inputs.home-manager;
  lib = inputs.nixpkgs.lib;
  pkgs-unstable = import inputs.nixpkgs-unstable {
    system = "x86_64-linux";
  };
in

{
  imports = [
    home-manager.nixosModules.home-manager
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.extraSpecialArgs = {
    inherit inputs pkgs-unstable;
  };

  home-manager.users = lib.genAttrs users (user: {
    imports = [ ../home/${user} ];
  });
}
