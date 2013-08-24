#!/usr/bin/env ruby
require_relative "../lib/json_reader"
def get_date_input(date_for)
  puts "Enter #{ date_for } date (in dd-mm format) : "
  date = Date.strptime(gets.chomp, '%d-%m')
  rescue
    puts "Enter date in dd-mm format only"
    retry
  date
end

hotels_details = read_hotel_data_from_json("hotels.json")
checkin_date = get_date_input("check-in")
checkout_date = get_date_input("check-out")
hotels_details.each do |hotel|
  puts hotel.estimate_bill(checkin_date, checkout_date)
end