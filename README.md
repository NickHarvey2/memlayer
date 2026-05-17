# fq MCP Server

This is an MCP server implemented in Python.

## Installation

Ensure you have `uv` installed. Then, install the dependencies:

```bash
uv sync
```

## Running the Server

To run the server using `stdio` transport:

```bash
uv run src/fq/server.py
```

## Development

To run in development mode with the MCP Inspector:

```bash
uv run mcp dev src/fq/server.py
```
