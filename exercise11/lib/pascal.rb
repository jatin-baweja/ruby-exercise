module Pascal

  def pascal_line_iterator(number_of_lines)
    pascal_line = [1]
    yield pascal_line.dup
    i = 0
    while i < number_of_lines
      pascal_line.push(0).reverse!.each_index { |index| pascal_line[index] += (pascal_line[index + 1] ? pascal_line[index + 1] : 0) }
      pascal_line.reverse!
      yield pascal_line.dup
      i += 1
    end
  end

  def pascal(number)
    lines = []
    pascal_line_iterator(number) do |line|
      lines.push(line)
    end
    lines
  end

end