require_relative "exception"
require_relative "object"
class Name

  def initialize(firstname, lastname)
    if firstname.nilOrEmpty?
      raise FirstNameNilOrEmptyError
    elsif lastname.nilOrEmpty?
      raise LastNameNilOrEmptyError
    elsif firstname != firstname.capitalize
      raise FirstNameNotCapitalized 
    else
      @firstname = firstname
      @lastname = lastname
    end
    rescue StandardError
      puts $!
  end

end