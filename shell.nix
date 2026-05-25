{
  pkgs,
  buildInputs,
}:
pkgs.mkShell {
  buildInputs = with pkgs;
    [
      python3
      python3Packages.pytest
      python3Packages.typer
    ]
    ++ buildInputs;
  shellHook = ''
    echo "----------------------------------------------------"
    echo "Welcome to the memlayer development shell!"
    echo "----------------------------------------------------"
    echo "Dependencies are managed via Nix."
    echo "Run the server with: 'mcp run src/memlayer/server.py'"
    echo "Run the server with: 'tail -f ./pipe | mcp run src/memlayer/server.py -t stdio | jq' to listen on a named pipe
    echo "----------------------------------------------------"
  '';
}
