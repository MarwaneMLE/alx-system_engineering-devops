#!/usr/bin/env ruby

# Get the first command-line argument
input_arg = ARGV[0]

# Define the regex pattern
pattern = /hbt{2,5}n/

# Use the scan method to find all occurrences of the pattern
matches = input_arg.scan(pattern)

# Print the result
puts matches.join
~
