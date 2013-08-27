#!/usr/bin/env ruby
require_relative "../lib/formatted_time"
puts "Enter time1 (in h:m:s format) :"
time1 = FormattedTime.new(gets.chomp)
puts "Enter time2 (in h:m:s format) :"
time2 = FormattedTime.new(gets.chomp)
unformatted_time = time1.add(time2)
formatted_time = (unformatted_time[0] == 1 ? "1 day & " : "") + unformatted_time[1].to_s.rjust(2,'0') + ":" + unformatted_time[2].to_s.rjust(2,'0') + ":" + unformatted_time[3].to_s.rjust(2,'0')
puts "Total Time: ", formatted_time