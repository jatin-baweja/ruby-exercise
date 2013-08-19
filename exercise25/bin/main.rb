#!/usr/bin/env ruby
require_relative "../lib/item"
item_list = []
add_another_item = true
while add_another_item
  print "Name of the product: "
  item_name = gets.chomp
  print "Imported?: "
  imported = true if gets.chomp =~ /yes/i
  print "Exempted from sales tax? "
  sales_tax_exempted = true if gets.chomp =~ /yes/i
  print "Price: "
  price = Integer(gets.chomp)
  item_list.push(Item.new(item_name, price, imported, sales_tax_exempted))
  print "Do you want to add more items to your list(y/n): "
  add_another_item = false if gets.chomp =~ /^n$/i
end
grand_total = 0
item_list.each do |item|
  puts item
  grand_total += item.total
end
puts "Grand Total".ljust(25) + ":" + "#{ grand_total }".rjust(7)