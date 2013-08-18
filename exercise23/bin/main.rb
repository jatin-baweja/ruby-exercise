#!/usr/bin/env ruby
require_relative "../lib/array"
employee_data = read_csv("employees.csv")
employee_data.store_data_in_file("employee_data.txt")