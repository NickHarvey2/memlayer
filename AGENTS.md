# AGENTS.md

## Development Environment
- Uses `uv` for dependency management.
- Uses `nix` for development shell (`shell.nix`).

## Commands
- `uv sync`: Install dependencies.
- `uv run src/fq/server.py`: Run server via stdio.
- `uv run mcp dev src/fq/server.py`: Run server with MCP Inspector.
- `pytest`: Run tests.

## Gotchas
- `numpy` and `libsndfile` are present in Nix configs but missing from `pyproject.toml`.
