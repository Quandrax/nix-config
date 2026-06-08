{ self, inputs }:

{ host, users }:

inputs.nixpkgs.lib.nixosSystem {
  modules = [
    ../hosts/${host}

    (import ./makeUsers.nix { inherit inputs users; })
  ]
  ++ map (user: ../home/${user}/user.nix) users;

  system = "x86_64-linux";
  specialArgs = { inherit inputs; };
}
