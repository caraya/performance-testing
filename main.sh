#!/usr/local/bin/bash

# seed random generator
RANDOM=$$$(date +%s)

# Pushes the content of our fullset.txt list
# Into the URLS array
mapfile urls <fullset.txt 

# pick a random entry from the domain list to check against
URL_TO_TEST=${urls[$RANDOM % ${#urls[@]}]}
# Tells us what URL we're testing
echo Testing $URL_TO_TEST

# Runs the node script for the URL we're testing
node performance-test.js URL_TO_TEST