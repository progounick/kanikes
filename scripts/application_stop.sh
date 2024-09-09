#!/bin/bash
# before_install.sh

# Stop any existing application process (adjust for your application)
echo "Stopping existing application..."
sudo systemctl stop algotech-platform.service || true
