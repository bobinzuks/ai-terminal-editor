#!/bin/bash

echo "Installing AI Terminal CLI Editor..."

# Move script to /usr/local/bin
sudo mkdir -p /usr/local/bin
sudo cp ai-terminal-editor/usr/local/bin/ai_terminal_editor /usr/local/bin/
sudo chmod +x /usr/local/bin/ai_terminal_editor

# Create config directory
sudo mkdir -p /etc/ai-terminal-editor

# Ensure permissions
sudo chmod +x /usr/local/bin/ai_terminal_editor

echo "Installation complete. Run 'ai_terminal_editor' to start."

# Ask for API key if not set
if [ ! -f "/etc/ai-terminal-editor/config.json" ]; then
    echo "No API key found. Please enter your OpenAI API key:"
    read api_key
    echo "{\"api_key\": \"$api_key\"}" | sudo tee /etc/ai-terminal-editor/config.json > /dev/null
    echo "API key saved."
fi
