#!/usr/bin/env ruby
require_relative "../lib/array"
[2, 4, 6, 8].reverse_iterate {|i| print "#{i} " }