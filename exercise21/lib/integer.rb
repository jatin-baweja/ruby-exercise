require_relative "exception"
class Integer
  def factorial
    case
    when self >= 0
      factorial = 1
      factorial = self == 0 ? 1 : self * (self - 1).factorial
    else
      raise NegativeIntegerException, "Negative integers not allowed"
    end
  end
end