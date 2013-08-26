class Tabular

  def initialize
    @column_widths = []
    @row_length = 0
  end
  
  def self.get_row_length
    length_of_row = 0
    @column_widths.each do |column_length|
      length_of_row += column_length + 3
    end
    length_of_row += 1
  end

  def self.display(row_headers, data_array, footer = nil)
    @column_widths = get_column_widths(row_headers, data_array)
    @row_length = get_row_length
    puts "-" * @row_length
    row_headers.each_index do |index|
      print "| ", "#{ row_headers[index] }".ljust(@column_widths[index]), " "
    end
    puts "|"
    puts "-" * @row_length
    data_array.each do |row|
      row.each_index do |index|
        print "| ", "#{ row[index] }".ljust(@column_widths[index]), " "
      end
      puts "|"
    end
    puts "-" * @row_length
    print "| #{ footer }".ljust(@row_length - 1), "|\n"
    puts "-" * @row_length
  end

  def self.get_column_widths(row_headers, data_array)
    column_width = []
    row_headers.each_index do |index|
      column_width[index] = row_headers[index].to_s.length
    end
    data_array.each do |row|
      row.each_index do |index|
        column_width[index] = [ row[index].to_s.length, column_width[index] ].max
      end
    end
    column_width
  end

end