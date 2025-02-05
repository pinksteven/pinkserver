{
  description = "Personal server flake, nothing special, quite basic";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs =
    inputs@{ self, nixpkgs, ... }:
    {
      nixosConfigurations = {
        pinkserver = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            flake-self = self;
          };
          modules = [
            ./hosts/pinkserver/configuration.nix
          ];
        };
      };
    };
}
