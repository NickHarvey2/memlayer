with import <nixpkgs> {};
with pkgs.python3Packages;
  buildPythonPackage rec {
    pname = "fq";
    src = ./src;
    pyproject = true;
    build-system = [ setuptools ];
    propagatedBuildInputs = [
      pytest
      numpy
      pkgs.libsndfile
      uv
      python
    ];
  }
