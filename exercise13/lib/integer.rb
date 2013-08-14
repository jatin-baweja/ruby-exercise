class Integer
  def factorial
    case 
    when self > 0
      "Factorial is " + (1..self).inject(:*).to_s
    when self == 0
      "Factorial is 1"
    else
      "Please enter a positive integer only"
    end
  end
end