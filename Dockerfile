FROM rust:1.88-slim

# Copy the cook binary from the host
COPY cook /usr/local/bin/cook

# Make sure the binary is executable
RUN chmod +x /usr/local/bin/cook

# Set the startup command
CMD ["cook", "server", "--host", "0.0.0.0", "--port", "9980"]
