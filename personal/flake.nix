{
  description = "Zouhir's Nix Configs";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";

    # Home manager
    home-manager = {
        url = "github:nix-community/home-manager/release-23.05";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
        url = "github:lnl7/nix-darwin/master";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    alacritty-theme = {
    	url = "github:alexghr/alacritty-theme.nix";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    darwin,
    alacritty-theme,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {

    darwinConfigurations = {
      "mac-mini" = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [ ../machines/mac.nix ];
      };
    };

    homeConfigurations = {
      "zouhir@mac-mini" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.aarch64-darwin;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
						({ config, pkgs, ... }: { nixpkgs.overlays = [ alacritty-theme.overlays.default ]; })
            ../modules/home.nix
            ../modules/pkgs.nix
            ../modules/bash/default.nix
            ../modules/git.nix
            ../modules/gh.nix
            ../modules/alacritty.nix
            ../modules/readline.nix
        ];
      };
    };
  };
}
