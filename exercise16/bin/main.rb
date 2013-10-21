#!/usr/bin/env ruby
require_relative "../lib/string"
puts "Enter a string:"
input_string = gets.chomp
puts "Enter a word or letter to be searched:"
search_word = gets.chomp
replaced_string_and_count = input_string.find_occurence_of(search_word)
puts "#{ replaced_string_and_count[:replacement] }"
puts "Total Occurences found: #{ replaced_string_and_count[:count] }"