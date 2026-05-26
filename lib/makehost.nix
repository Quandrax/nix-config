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
in
nixpkgs.lib.nixosSystem {
  inherit system;
  specialArgs = { inherit inputs; };

  modules = [
    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${user}.imports = extraHmModules;
    }
  ]
  ++ extraModules;
}
