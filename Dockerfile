FROM --platform=linux/arm64 rust:1.88-slim

# Copy the cook binary from the host
COPY cook /usr/local/bin/cook

# Make sure the binary is executable
RUN chmod +x /usr/local/bin/cook

# Create recipes directory and copy recipes
RUN mkdir -p /app/recipes
COPY recipes/ /app/recipes/

# Set working directory
WORKDIR /app

# Set the startup command with the recipes directory as base path
CMD ["cook", "server", "/app/recipes", "--host", "--port", "9080"]
