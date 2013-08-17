require_relative "file"
class Employee
  attr_reader :designation, :name, :empid
  def initialize(name, empid, designation)
    @name = name
    @empid = empid
    @designation = designation
  end
  def self.read_csv(file_name)
    employee_data = []
    File.open(File.get_full_path(file_name)) do |file|
      while line = file.gets
        line.chomp!
        name, empid, designation = line.split(/\s*,\s*/)
        employee_data.push(Employee.new(name, empid, designation))
      end
    end
    employee_data
  end
end