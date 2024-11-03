#!/bin/bash

# Define the path to the file
file="/root/www/c2.tail.ws/public/upload/gravatarhash.txt"

# Check if the file exists
if [ -f "$file" ]; then
    # Read in the hash from the file
    md5hash=$(cat "$file")

    # Grab the image and save it to a folder
    wget -q "https://secure.gravatar.com/avatar/$md5hash" -O "/root/www/c2.tail.ws/public/avatars/$md5hash.png"

    # Clean up the hash file
    rm "$file"
else
    echo "Skipping: $file does not exist."
fi
