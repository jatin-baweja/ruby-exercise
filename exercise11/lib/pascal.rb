def pascal_generator(lines)
  array_to_print = [1]
  (0..lines).each do |line|
    array_to_print = yield(array_to_print, line)
  end
end
def pascal(number)
  pascal_generator(number) do |array, num|
    for i in 0..num
      print array[i], " "
    end
    array[num+1] = 0
    (num + 1).downto(1) do |j|
      array[j] += array[j-1]
    end
    print "\n"
    array
  end
end