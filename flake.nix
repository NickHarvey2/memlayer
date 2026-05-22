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
      pkgs = import nixpkgs {
        inherit system;
      };
      pythonPackages = pkgs.python3Packages;
      runtimeDeps = [
        pythonPackages.mcp
        pythonPackages.pydantic
      ];
      devDeps = [
        pkgs.python3
        pkgs.uv
        pythonPackages.pytest
      ];
    in {
      devShells.default = pkgs.callPackage ./shell.nix {
        pythonDeps = runtimeDeps;
        devDeps = devDeps;
      };
      packages.default = pkgs.callPackage ./package.nix {
        pythonDeps = runtimeDeps;
      };
    };
    };
}
