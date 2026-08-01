{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    stylix.url = "github:nix-community/stylix";
    helium.url = "github:AlvaroParker/helium-nix";
  };

  outputs =
    {
      self,
      nixpkgs,
      stylix,
      helium,
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          stylix.nixosModules.default
          ./configuration.nix

          ({ pkgs, ... }: {
            environment.systemPackages = [
              helium.packages.${system}.default
            ];
          })
        ];
      };
    };
}
