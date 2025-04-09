#!/bin/bash
echo "Checking memory usage..."
total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
free=$(grep MemFree /proc/meminfo | awk '{print $2}')
available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
used=$((total - free))

# Convert to human-readable format (KB -> MB)
total=$((total / 1024))
free=$((free / 1024))
available=$((available / 1024))
used=$((used / 1024))

echo "Total: ${total}MB Used: ${used}MB Free: ${free}MB Available: ${available}MB"

