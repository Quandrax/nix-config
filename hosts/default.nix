inputs:
let
  hosts = builtins.readDir ./.;
  mkHost = null; # For later
in
{
  nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      ./laptop
      ../home/drax/user.nix
      inputs.mango.nixosModules.mango
      inputs.nixos-hardware.nixosModules.lenovo-ideapad-s145-15api
      #hM
      inputs.home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.drax.imports = [
          inputs.mango.hmModules.mango
          ../home/drax
        ];
      }
    ];
  };

  #nixosConfigurations.pc = inputs.nixpkgs.lib.nixosSystem { };
}
