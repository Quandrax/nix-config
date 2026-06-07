{
  description = "Desktop";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mango = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixos-hardware,
      home-manager,
      mango,
    }@inputs:
    let
      mkHost = import ./lib/makehost.nix { inherit nixpkgs inputs; };
    in
    {
      nixosConfigurations.Blyat = mkHost "Travel" {
        system = "x86_64-linux";
        user = "drax";
        extraModules = [
          ./hosts/laptop
          mango.nixosModules.mango
          nixos-hardware.nixosModules.lenovo-ideapad-s145-15api
        ];
        extraHmModules = [ mango.hmModules.mango ];
      };

    };
}
