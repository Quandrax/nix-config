{ nixpkgs, inputs }:

name:

{
  system,
  user,
  extraModules ? [ ],
  extraHmModules ? [ ],
}:

let
  home-manager = inputs.home-manager;
  user-dir = ../home/${user};
  user-def = ../home/${user}/user.nix;
in
nixpkgs.lib.nixosSystem {
  inherit system;
  specialArgs = { inherit inputs; };

  modules = [
    user-def

    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${user}.imports = [ user-dir ] ++ extraHmModules;
    }
  ]
  ++ extraModules;
}
