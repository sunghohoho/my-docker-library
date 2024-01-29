#!/bin/bash

# Array of URLs to test
urls=("docker.gguduck.com:9000")

# Function to select a random URL from the array
get_random_url() {
    local array=("$@")
    local random_index=$((RANDOM % ${#array[@]}))
    echo "${array[random_index]}"
}

# Number of tests to run
num_tests=1000

# Loop for the specified number of tests
for ((i = 1; i <= num_tests; i++)); do
    # Get a random URL
    random_url=$(get_random_url "${urls[@]}")

    # Display the current test and the selected URL
    echo "Test $i: $random_url"

    # Use curl to perform the connection test
    curl -I "$random_url"

    # Add a sleep to simulate random timing between tests
    sleep $((RANDOM % 5))
done
