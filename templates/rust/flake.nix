{
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      fenix,
    }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      rustToolchain = fenix.packages.x86_64-linux.stable.toolchain;
    in
    {
      devShells."x86_64-linux".default = pkgs.mkShell rec {
        buildInputs = [ rustToolchain ];
        LD_LIBRARY_PATH = nixpkgs.lib.makeLibraryPath buildInputs;
      };
    };
}
