class Interest
  attr_reader :principal, :time

  def initialize
    @principal, @time, @rate_of_interest = yield
  end

  def rate
    @rate_of_interest/100.0
  end

  def simple_interest
    principal * time * rate
  end

  def compound_interest
    principal * (1 + rate) ** time - principal
  end

  def difference
    difference = (compound_interest - simple_interest).round(2)
    "Difference in interests : #{ difference }"
  end

end