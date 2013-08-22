class Name
  def initialize(firstname, lastname)
    begin
      if !firstname.nil? && !firstname.empty? && !lastname.nil? && !lastname.empty?
        raise "First name should start with a capital letter" if firstname != firstname.capitalize
        @firstname = firstname
        @lastname = lastname
      else
        raise "First Name or Last Name cannot be empty or null"
      end
    rescue Exception
      puts "Error in input: #{ $! }"
    end
  end
end