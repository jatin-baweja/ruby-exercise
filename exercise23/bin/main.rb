#!/usr/bin/env ruby
require_relative "../lib/data_storage"
employee_data = read_csv("employees.csv")
store_data_in_file(employee_data, "employee_data.txt")