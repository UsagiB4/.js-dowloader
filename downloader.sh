#!/bin/bash

# Check if URL is provided as argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Extract filename from URL
filename=$(basename "$1")

# Download the file using curl and save it with the extracted filename
curl -o "$filename" "$1"

echo "File downloaded and saved as: $filename"
