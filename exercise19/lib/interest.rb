class Interest
  def initialize(principal, time, rate_of_interest = 10, &block)
    @principal = principal
    @time = time
    @rate_of_interest = rate_of_interest
    @block = block
  end
  def difference
    simple_interest = @principal * @time * @rate_of_interest/100.0
    compound_interest = @principal * (1 + @rate_of_interest/100.0)**@time - @principal
    "Difference in interests : #{@block.call(simple_interest, compound_interest)}"
  end
end