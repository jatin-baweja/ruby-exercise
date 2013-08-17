require_relative "employee"
class Array
  def store_data_in_file(file_name)
    File.open(File.get_full_path(file_name), "w") do |file|
      group_by {|emp| emp.designation }.each do |key,value|
        plural_key = key + "s"
        file.puts plural_key
        value.each do |employee|
          file.puts "#{employee.name} (EmpId: #{employee.empid})"
        end
        file.puts
      end
    end    
  end
end