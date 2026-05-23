{
  description = "memlayer MCP Server Flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
    flake-parts,
    ...
  } @ inputs: flake-parts.lib.mkFlake {
    inherit inputs;
  } {
    systems = flake-utils.lib.allSystems;
    perSystem = {
      config,
      self,
      pkgs,
      system,
      ...
    }: let
      memlayer = pkgs.callPackage ./package.nix {};
    in {
      devShells.default = pkgs.callPackage ./shell.nix {
        package = memlayer;
      };
      packages.default = memlayer;
    };
  };
}
