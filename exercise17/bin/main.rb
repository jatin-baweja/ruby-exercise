#!/usr/bin/env ruby
require_relative "../lib/string"
puts "Enter time1:"
time1 = gets.chomp
puts "Enter time2:"
time2 = gets.chomp
puts time1.sum_time(time2)