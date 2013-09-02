#!/usr/bin/env ruby
require_relative "../lib/interest"
puts "Enter Principal Amount: "
principal = Integer(gets.chomp)
puts "Enter Time(in years): "
time = Integer(gets.chomp)
interest = Interest.new do
  [principal, time, 10]
end
puts interest.difference