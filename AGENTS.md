# AGENTS.md

## Development Environment
- Launch using `nix develop`
- Run individual commands using `nix develop --extra-experimental-features 'nix-command flakes' --command {COMMAND}`
- Uses `nix` for dependency management and development shell.

## Commands
- `mcp run src/memlayer/server.py`: Run server via stdio.
- `mcp dev src/memlayer/server.py`: Run server with MCP Inspector.
- `pytest`: Run tests.

