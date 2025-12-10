{

  description = "Desktop";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nix-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nix-unstable";
    };
  };

  outputs = { self, nixpkgs, nix-unstable, home-manager, mango, ... }@inputs: {
    nixosConfigurations = {

      Blyat = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./configuration.nix
          mango.nixosModules.mango
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.drax.imports = [ ./home mango.hmModules.mango ];
          }
        ];
      };

    };
  };

}
