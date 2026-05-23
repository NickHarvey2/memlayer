{ pkgs, package }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python3
    uv
    python3Packages.pytest
  ] ++ (package.buildInputs or []);
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
