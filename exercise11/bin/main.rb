#!/usr/bin/env ruby
require_relative "../lib/pascal"
include Pascal
pascal(6).each do |line|
  line.each do |element|
    print element, " "
  end
  puts
end