def generate_fibonacci_series
  previous_number = 0
  next_number = 1
  while next_number < 1000
    yield(next_number)
    next_number += previous_number
    previous_number = next_number - previous_number
  end
end
generate_fibonacci_series {|number| printf(" %3.0f \n", number) }