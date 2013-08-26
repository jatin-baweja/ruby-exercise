#!/usr/bin/env ruby
require_relative "../lib/invoice"
item_list = Invoice.new
add_another_item = true
while add_another_item
  imported = false
  sales_tax_exempted = false
  print "Name of the product: "
  item_name = gets.chomp
  print "Imported?: "
  imported = true if gets.chomp =~ /yes/i
  print "Exempted from sales tax? "
  sales_tax_exempted = true if gets.chomp =~ /yes/i
  print "Price: "
  price = Integer(gets.chomp)
  item_list.add(Item.new(item_name, price, imported, sales_tax_exempted))
  print "Do you want to add more items to your list(y/n): "
  add_another_item = false if gets.chomp =~ /^n$/i
end
item_list.display