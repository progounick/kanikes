#!/bin/bash
# after_install.sh

# Variables
DEPLOY_DIR="/opt/algotech/platform"
JAR_FILE="$DEPLOY_DIR/*.jar"

# Change ownership of the deployment directory and files to the ubuntu user
chown -R algouser:algouser $DEPLOY_DIR

# Set executable permissions for the jar file (if needed)
#chmod +x $JAR_FILE

echo "Ownership and permissions updated."

# Start the application if it's a service or script
echo "Starting application..."
sudo systemctl start algotech-platform.service  # Replace 'my-app' with your app's service if applicable
