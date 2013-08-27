require_relative "exception"
class Name
  def initialize(firstname, lastname)
    begin
      if firstname.nil? || firstname.empty?
        raise FirstNameNilOrEmptyError
      elsif lastname.nil? || lastname.empty?
        raise LastNameNilOrEmptyError
      else
        raise FirstNameNotCapitalized if firstname != firstname.capitalize
        @firstname = firstname
        @lastname = lastname
      end
    rescue StandardError
      puts $!
    end
  end
end