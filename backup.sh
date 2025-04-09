#!/bin/bash
echo "Backing up your home folder..."
tar -czf backup_home.tar.gz $HOME
echo "✅ Backup saved as backup_home.tar.gz"
