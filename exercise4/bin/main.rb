#!/usr/bin/env ruby
require_relative "../lib/palindrome"
puts "Enter a string (Enter 'q' OR 'Q' to quit):"
input_string = gets.chomp
check_palindrome(input_string)