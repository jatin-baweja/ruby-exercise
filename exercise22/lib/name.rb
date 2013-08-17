class Name
  def initialize(firstname, lastname)
    begin
      if firstname && lastname
        @firstname = firstname
        @lastname = lastname
        if @firstname != @firstname.capitalize
          raise "First name should start with a capital letter"
        end
      else
        raise "First Name or Last Name cannot be nil"
      end
    rescue RuntimeError => input_error
      puts "Error in input: #{input_error}"
    end
  end
end