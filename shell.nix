{ pkgs }:
let
  pythonPackages = pkgs.python3Packages;
in
pkgs.mkShell {
  buildInputs = [
    pythonPackages.pytest
    pythonPackages.numpy
    pkgs.libsndfile
    pkgs.uv
    pythonPackages.python
  ];
  shellHook = ''
    echo "----------------------------------------------------"
    echo "Welcome to the memlayer development shell!"
    echo "----------------------------------------------------"
    echo "You can use 'uv sync' to manage dependencies locally."
    echo "Run the server with: 'uv run src/memlayer/server.py'"
    echo "Run the inspector with: 'uv run mcp dev src/memlayer/server.py'"
    echo "----------------------------------------------------"
  '';
}
