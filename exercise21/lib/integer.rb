class Integer
  def factorial
    begin
      case
      when self > 0
        "Factorial is " + (1..self).inject(:*).to_s
      when self == 0
        "Factorial is 1"
      else
        raise "Negative integers not allowed"
      end
    rescue RuntimeError => negative_value
      puts "Error in input: #{negative_value}"
    end
  end
end