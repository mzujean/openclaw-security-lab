FROM node:22-bookworm-slim

# Install system tools
RUN apt-get update && apt-get install -y curl git python3 && rm -rf /var/lib/apt/lists/*

# SECURITY: We changed the UID to 1005 to avoid the 'not unique' error
RUN useradd -m -u 1005 sec-user
USER sec-user
WORKDIR /home/sec-user

# Install OpenClaw
RUN npm install -g openclaw@latest

# Start the agent
CMD ["openclaw", "gateway", "start"]