with import <nixpkgs> {};
with pkgs.python3Packages;
  buildPythonPackage rec {
    name = "fq";
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
    shellHook = ''
      echo "----------------------------------------------------"
      echo "Welcome to the fq development shell!"
      echo "----------------------------------------------------"
      echo "You can use 'uv sync' to manage dependencies locally."
      echo "Run the server with: 'uv run src/fq/server.py'"
      echo "Run the inspector with: 'uv run mcp dev src/fq/server.py'"
      echo "----------------------------------------------------"
    '';
  }
