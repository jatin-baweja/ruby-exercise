class FirstNameNilOrEmptyError < StandardError

  def initialize(msg = "First Name cannot be empty or null")
    super(msg)
  end

end
class LastNameNilOrEmptyError < StandardError

  def initialize(msg = "Last Name cannot be empty or null")
    super(msg)
  end

end
class FirstNameNotCapitalized < StandardError

  def initialize(msg = "First Name should be capitalized")
    super(msg)
  end

end