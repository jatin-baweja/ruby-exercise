require_relative "exception"
class Integer
  def factorial
    case
    when self > 0
      factorial = 1
      num = 1
      while num <= self
        factorial *= num
        num += 1
      end
      "Factorial is " + factorial.to_s
    when self == 0
      "Factorial is 1"
    else
      raise NegativeIntegerException, "Negative integers not allowed"
    end
  end
end