#!/bin/sh

# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory if it does not exist
mkdir -p "$(dirname "$writefile")"

# Write the string to the file, overwriting any existing file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ ! -f "$writefile" ]; then
    echo "Error: Could not create file $writefile."
    exit 1
fi

echo "Successfully wrote to $writefile"
