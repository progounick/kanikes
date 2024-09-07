#!/bin/bash
# after_install.sh

# Start the application if it's a service or script
echo "Starting application..."
sudo systemctl start algotech-platform.service  # Replace 'my-app' with your app's service if applicable
