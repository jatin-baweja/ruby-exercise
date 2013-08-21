#!/usr/bin/env ruby
require_relative "../lib/string"
puts "Enter a string (Enter 'q' OR 'Q' to quit):"
input_string = gets.chomp
while input_string != "q" && input_string != "Q"
  puts "#{ input_string } is #{ input_string.palindrome? ? "" : "not " }a palindrome"
  puts "Enter a string (Enter 'q' OR 'Q' to quit):"
  input_string = gets.chomp
end