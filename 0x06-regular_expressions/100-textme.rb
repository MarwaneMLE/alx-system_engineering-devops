#!/usr/bin/env ruby
#!/usr/bin/env ruby

# Get the first command-line argument
input_arg = ARGV[0]

# Define the regex pattern
patterns = /(?<=from|to|flags):(\+?\w+|[-?[0-1]:?]+)/).join(',')

# Use the scan method to find all occurrences of the pattern
matches = input_arg.scan(patterns)

# Print the result
puts matches.join
