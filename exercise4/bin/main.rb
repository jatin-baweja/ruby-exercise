#!/usr/bin/env ruby
require_relative "../lib/string"
def get_user_input
  puts "Enter a string (Enter 'q' OR 'Q' to quit):"
  gets.chomp
end
loop do
  input_string = get_user_input
  break if input_string =~ /^q$/i
  puts "#{ input_string } is #{ input_string.palindrome? ? "" : "not " }a palindrome"
end