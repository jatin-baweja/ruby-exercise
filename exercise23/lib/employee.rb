class Employee
  attr_reader :designation, :name, :empid
  def initialize(name, empid, designation)
    @name = name
    @empid = empid
    @designation = designation
  end
end