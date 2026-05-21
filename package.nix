{ pkgs }:
let
  pythonPackages = pkgs.python3Packages;
in
pythonPackages.buildPythonPackage {
  pname = "memlayer";
  version = "0.1.0";
  src = ./.;
  pyproject = true;
  build-system = [ pythonPackages.hatchling ];
  propagatedBuildInputs = [
    pythonPackages.mcp
    pythonPackages.pydantic
    pythonPackages.pytest
    pythonPackages.numpy
    pkgs.libsndfile
    pkgs.uv
    pythonPackages.python
  ];
}
