class Array
  def power(exponent)
    collect { |x| x**exponent if x.is_a? Integer }
  end
end