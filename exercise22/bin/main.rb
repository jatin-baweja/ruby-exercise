#!/usr/bin/env ruby
require_relative "../lib/name"
first_name = "abcd"
last_name = "Xyz"
#Call with first letter of firstname small
name1 = Name.new(first_name, last_name)
last_name = nil
#Call with null value passed
name2 = Name.new(first_name, last_name)
