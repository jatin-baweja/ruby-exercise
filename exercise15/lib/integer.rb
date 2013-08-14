class Integer
  def prime_numbers_upto
    case
    when self > 1
      prime_numbers = (2..self).to_a
      prime_numbers.each do |num|
        (num*2).step(self, num) do |not_prime|
          prime_numbers.delete(not_prime)
        end
      end
      "Prime Numbers in range : " + prime_numbers.to_s
    when self == 0 || self == 1
      "No prime numbers in range."
    else
      "Please enter a positive integer only"
    end
  end
end