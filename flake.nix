{
  description = "Keycloak Theme for StuRa Ilmenau";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, flake-utils, nixpkgs }:
    let
      pkgs = import nixpkgs {
        overlays = [
          (import ./overlay.nix)
        ];
      };
    in
    flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "keycloak-theme-stura";
      overlay = ./overlay.nix;
      preOverlays = [ devshell.overlays.default ];
    };
}
