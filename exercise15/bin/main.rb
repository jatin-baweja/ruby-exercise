#!/usr/bin/env ruby
require_relative "../lib/integer"
puts "Enter a number:"
input_number = gets.chomp
puts Integer(input_number).prime_numbers_upto