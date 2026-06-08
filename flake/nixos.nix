{ self, inputs, ... }:

let
  mkHost = import ../lib/makeHost.nix { inherit self inputs; };
in

{
  flake.nixosConfigurations.laptop = mkHost {
    host = "laptop";
    users = [ "drax" ];
  };

  #placeholder for tests
  #flake.nixosConfigurations.pc = mkHost {
  #  host = "laptop";
  #  users = [ "drax" ];
  #};
}
