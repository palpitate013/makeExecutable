#!/bin/bash

# Define variables
SCRIPT_URL="https://raw.githubusercontent.com/palpitate013/makeExecutable/refs/heads/main/makeExecutable"
INSTALL_PATH="/usr/local/bin/makeExecutable"

# Ensure the script is run with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script with sudo:"
    echo "sudo bash install.sh"
    exit 1
fi

echo "Downloading makeExecutable script..."
curl -o "$INSTALL_PATH" -L "$SCRIPT_URL"

if [ $? -ne 0 ]; then
    echo "Error: Failed to download the script."
    exit 1
fi

echo "Setting executable permissions..."
chmod +x "$INSTALL_PATH"

echo "Installation complete!"
echo "You can now use 'makeExecutable' from anywhere in the terminal."

exit 0
