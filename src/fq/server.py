from mcp.server.fastmcp import FastMCP

# Initialize the MCP server
mcp = FastMCP("fq")

@mcp.tool()
def hello(name: str = "World") -> str:
    """Say hello to someone."""
    return f"Hello, {name}!"

if __name__ == "__main__":
    mcp.run()
