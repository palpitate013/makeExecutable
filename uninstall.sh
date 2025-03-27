#!/bin/bash

INSTALL_PATH="/usr/local/bin/makeExecutable"

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script with sudo:"
    echo "sudo bash uninstall.sh"
    exit 1
fi

echo "Removing makeExecutable..."
rm -f "$INSTALL_PATH"

echo "Uninstallation complete!"
