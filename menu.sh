#!/bin/bash

while true; do
  echo ""
  echo "===== Simple System Tools Menu ====="
  echo "1. Check Disk"
  echo "2. Check Memory"
  echo "3. Backup Home"
  echo "4. Exit"
  read -p "Choose an option [1-4]: " option

  case $option in
    1) ./check_disk.sh ;;
    2) ./check_memory.sh ;;
    3) ./backup.sh ;;
    4) echo "Goodbye!"; exit ;;
    *) echo "Invalid option. Try again." ;;
  esac
done
