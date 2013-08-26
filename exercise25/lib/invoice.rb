require_relative "item"
require_relative "tabular"
class Invoice

  def initialize
    @items = []
    @total = 0
  end

  def add(item)
    @items.push(item)
  end

  def generate_total
    @total = 0
    @items.each do |item|
      @total += item.price_incld_tax
    end
    @total.round
  end

  def row_headers
    headers = []
    headers.push("Name", "Price", "Sales Tax", "Import Duty", "Price Including Tax")
  end
  
  def grand_total
    "Grand Total : #{ generate_total }"
  end

  def display
    Tabular.display(row_headers, data_array, grand_total)
  end

  def data_array
    list_of_items = []
    @items.each do |item|
      list_of_items.push(item.details)
    end
    list_of_items
  end

end