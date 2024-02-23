#!/bin/bash

BACKUP_SCRIPT="backup-Negpod_23.sh"  
REMOTE_HOST="64293e56bc62.3a2627c1.alu-cod.online"
REMOTE_USERNAME="64293e56bc62"
REMOTE_PASSWORD="328d3b338a4ced526c9a"
REMOTE_LOCATION="/summative/1023-2024j"

# Create a tarball of the directory
tar czf "$BACKUP_SCRIPT" "negpod_23-q1"

# Copy the tarball to the remote server
sshpass -p "$REMOTE_PASSWORD" scp "$BACKUP_SCRIPT" "$REMOTE_USERNAME@$REMOTE_HOST:$REMOTE_LOCATION"

echo "Backup completed and stored in $REMOTE_LOCATION."

