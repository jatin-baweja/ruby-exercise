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
    rescue Exception
      puts "Error in input: #{ $! }"
    end
  end
end