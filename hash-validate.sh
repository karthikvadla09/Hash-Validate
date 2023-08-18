#!/bin/bash

# Function to calculate hash based on chosen algorithm
calculate_hash() {
    local file="$1"
    local algorithm="$2"
    local hash_value=""

    case "$algorithm" in
        md5)
            hash_value=$(md5sum "$file" | awk '{ print $1 }')
            ;;
        sha1)
            hash_value=$(sha1sum "$file" | awk '{ print $1 }')
            ;;
        sha256)
            hash_value=$(sha256sum "$file" | awk '{ print $1 }')
            ;;
        *)
            echo "Unsupported hash algorithm: $algorithm"
            exit 1
            ;;
    esac

    echo "$hash_value"
}

# Read hash input, input file, and hash algorithm choice
read -p "Enter the hash input to check: " hash_input
input_file="$1"
read -p "Choose hash algorithm (md5, sha1, sha256, sha3): " hash_algorithm

# Calculate and display hash
hash_result=$(calculate_hash "$input_file" "$hash_algorithm")

# Validate the Hash
if [ "$hash_result" == "$hash_input" ]; then
    echo "File integrity is valid. The hashes match."
else
    echo "File integrity is compromised. The hashes do not match."
fi

