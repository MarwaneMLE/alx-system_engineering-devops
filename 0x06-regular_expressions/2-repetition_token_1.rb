#!/usr/bin/env ruby

input_arg = ARGV[0]

pattern = /hb{1}?tn/

match = input_arg.scan(pattern)

puts match.join
