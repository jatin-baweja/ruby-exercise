#!/usr/bin/env ruby
require_relative "../lib/integer"
puts "Enter a number:"
input_number = gets.chomp.to_i
puts input_number.prime_numbers_upto