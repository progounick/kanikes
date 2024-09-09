#!/bin/bash

# Variables
DEPLOY_DIR="/opt/algotech/platform"
BACKUP_DIR="/opt/algotech/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/deploy_backup_$TIMESTAMP.zip"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Check if the deployment directory exists
if [ -d "$DEPLOY_DIR" ]; then
    # Create a zip backup of the current deployment directory
    zip -r $BACKUP_FILE $DEPLOY_DIR

    echo "Backup created at $BACKUP_FILE"
else
    echo "No deployment directory found. Skipping backup."
fi
