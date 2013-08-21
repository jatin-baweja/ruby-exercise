#!/usr/bin/env ruby
require_relative "../lib/integer"
puts "Enter a number:"
input_number = gets.chomp
begin
  if input_number =~ /^[+|-]?\d+$/
    puts input_number.to_i.factorial
  else
    raise NotAnIntegerException, "Input is not an integer"
  end
rescue NegativeIntegerException
  puts $!
rescue NotAnIntegerException
  puts $!
end