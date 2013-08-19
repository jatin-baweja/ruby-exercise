#!/usr/bin/env ruby
require_relative "../lib/dictionary"
print "Number of Options : "
number_of_options = gets.chomp.to_i
print "Wrong Word : "
wrong_word = gets.chomp
options = []
puts "Options : "
while (number_of_options > 0)
  options.push(gets.chomp)
  number_of_options -= 1
end
puts "Answer : ", Dictionary.suggest_correct_word(wrong_word, options)