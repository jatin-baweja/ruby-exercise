#!/usr/bin/env ruby
require_relative "../lib/interest"
puts "Enter Principal Amount: "
principal = Integer(gets.chomp)
puts "Enter Time(in years): "
time = Integer(gets.chomp)
interest = Interest.new(principal, time) do |si, ci|
  diff = ci - si
  diff.round(2)
end
puts interest.difference