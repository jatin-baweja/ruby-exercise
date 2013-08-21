require_relative "file"
require_relative "employee"
require "csv"
def read_csv(file_name)
  employee_data = []
  CSV.foreach(File.get_full_path(file_name)) do |row|
    name, empid, designation = row.each {|elem| elem.strip!}
    employee_data.push(Employee.new(name, empid, designation))
  end
  employee_data
end