# memlayer MCP Server

This is an MCP server implemented in Python.

## Installation

Ensure you have `nix` installed. Then, enter the development environment:

```bash
nix develop
```

## Running the Server

To run the server using `stdio` transport:

```bash
mcp run src/memlayer/server.py
```

## Development

To run in development mode with the MCP Inspector:

```bash
mcp dev src/memlayer/server.py
```

## Commands
Initialization:
```json
{"jsonrpc": "2.0", "id": 1, "method": "initialize", "params": {"protocolVersion": "2024-11-05", "capabilities": {}, "clientInfo": {"name": "test-client", "version": "1.0.0"}}}
```

`hello` tool:
```json
{"jsonrpc": "2.0", "id": 3, "method": "tools/call", "params": {"name": "hello", "arguments": {"name": "Alice"}}}
```
