{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    helium = {
      url = "github:AlvaroParker/helium-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri-scratchpad-flake = {
      url = "github:gvolpe/niri-scratchpad";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      stylix,
      helium,
      catppuccin,
      niri-scratchpad-flake,
    }:
    let
      system = "x86_64-linux";
        sharedModules = [
          stylix.nixosModules.default
          catppuccin.nixosModules.catppuccin
          ({ pkgs, ... }: {
            environment.systemPackages = [
              helium.packages.${system}.default
              niri-scratchpad-flake.packages.${system}.default
            ];
          })
        ];
    in
    {
      nixosConfigurations = {
        terra = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = sharedModules ++ [./hosts/terra/configuration.nix];
        };
        luna = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = sharedModules ++[./hosts/luna/configuration.nix];
        };
      };
    };
}
