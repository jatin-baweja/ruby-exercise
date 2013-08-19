require "prime"
class Integer
  def prime_numbers_upto
    case
    when self > 1
      prime_numbers = [2]
      3.step(self, 2) do |num|
        prime_numbers.push(num) if Prime.prime?(num)
      end
      "Prime Numbers in range : " + prime_numbers.to_s
    when self == 0 || self == 1
      "No prime numbers in range."
    else
      "Please enter a positive integer only"
    end
  end
end