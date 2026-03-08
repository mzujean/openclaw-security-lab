FROM node:22-bookworm-slim

# Install tools the agent needs
RUN apt-get update && apt-get install -y curl git python3 && rm -rf /var/lib/apt/lists/*

# SECURITY: Create your locked-down user (the 'sec-user' you tested)
RUN useradd -m -u 1000 sec-user
USER sec-user
WORKDIR /home/sec-user

# Install the actual OpenClaw agent
RUN npm install -g openclaw@latest

# Start the agent gateway
CMD ["openclaw", "gateway", "start"]