#!/usr/bin/env ruby
require_relative "../lib/string"
puts "Enter a String to replace vowels:"
input_string = gets.chomp
puts input_string.replace_vowels