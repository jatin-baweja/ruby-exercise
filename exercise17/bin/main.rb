#!/usr/bin/env ruby
require_relative "../lib/formatted_time"
puts "Enter time1 (in h:m:s format) :"
time1 = FormattedTime.new(gets.chomp)
puts "Enter time2 (in h:m:s format) :"
time2 = FormattedTime.new(gets.chomp)
puts "Total Time: ", time1.add_time(time2)