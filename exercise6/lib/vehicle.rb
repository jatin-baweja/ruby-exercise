class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end
  def details
    print "\nName : #@name \nPrice #@price\n"
  end
  attr_writer :price
end